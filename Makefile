.PHONY: deploy-all

folders = $(shell find . -maxdepth 1 -type d -not -path '*/\.*' -not -path '.')
deploy-all:
	@echo "Deploying all folders"
	@for folder in $(folders); do \
		echo -e "\n\n\n---- Deploying $$folder ----"; \
		cd $$folder && make deploy; \
		cd ..; \
	done
