.PHONY: help bundle bootstrap
BREW_DIR := brew
BREWFILE := $(BREW_DIR)/Brewfile

bundle:
	@echo "Running brew bundle from $(BREWFILE)"
	@brew bundle -v --file=$(BREWFILE)

bootstrap:
	@echo "Running bootstrap"
	@docker compose -f server-gitops/bootstrap/docker-compose.yaml up -d 