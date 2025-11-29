.PHONY: help bundle bootstrap glances-init glances-load glances-start glances-stop glances-unload glances-logs

BREW_DIR := brew
BREWFILE := $(BREW_DIR)/Brewfile
BOOTSTRAP_COMPOSE_FILE := server-gitops/bootstrap/docker-compose.yaml

GLANCES_PLIST_PATH := $(HOME)/Library/LaunchAgents/net.glances.agent.plist
GLANCES_LOG_DIR := $(HOME)/Data/glances
GLANCES_CONFIG_SRC := ./config/glances/net.glances.agent.plist

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

bundle: ## Install Brewfile dependencies
	@echo "Running brew bundle from $(BREWFILE)"
	@brew bundle -v --file=$(BREWFILE)

bootstrap: ## Bootstrap the server (proxy network, docker-compose)
	@echo "Creating proxy network if it does not exist..."
	@docker network create proxy --driver bridge 2>/dev/null || echo "proxy network already exists"
	@echo "Running bootstrap"
	@docker compose -f $(BOOTSTRAP_COMPOSE_FILE) up -d

glances-init: ## Initialize Glances (logs dir, plist)
	@echo "Creating log directory at $(GLANCES_LOG_DIR)..."
	mkdir -p $(GLANCES_LOG_DIR)
	cp -rp $(GLANCES_CONFIG_SRC) $(GLANCES_PLIST_PATH)

glances-start: ## Start Glances service
	@echo "Starting glances..."
	launchctl start net.glances.agent || true

glances-stop: ## Stop Glances service
	@echo "Stopping glances..."
	launchctl stop net.glances.agent || true

glances-load: ## Load Glances LaunchAgent
	@echo "Loading LaunchAgent..."
	launchctl load $(GLANCES_PLIST_PATH) || true

glances-unload: ## Unload Glances LaunchAgent
	@echo "Unloading LaunchAgent..."
	launchctl unload $(GLANCES_PLIST_PATH) || true

glances-logs: ## Tail Glances logs
	@echo "Tailing glances logs..."
	tail -f $(GLANCES_LOG_DIR)/glances.log
