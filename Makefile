include .env
export $(shell sed 's/=.*//' .env)

.PHONY: help

help: ## This help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help

terraform-init: ## Init terraform project
	@cd infra/terraform && terraform init && cd -

terraform-plan: ## Show terraform plan to apply
	@cd infra/terraform && terraform plan && cd -

terraform-apply: ## Apply changes on infrastructure
	@cd infra/terraform && terraform apply && cd -

terraform-destroy: ## Destroy infrastructure
	@cd infra/terraform && terraform destroy && cd -

ansible-setup: ## Setup EC2 instances
	@cd infra/ansible/ && EC2_INI_PATH=./inventory/ec2.ini ansible-playbook setup_ec2.yml && cd -

elk-up: ## Launch ELK stack
	@cd elk_stack && docker-compose up -d && cd -

elk-down: ## Stop ELK stack
	@cd elk_stack && docker-compose down && cd -

echo-up: ## Launch echo service + filebeat
	@cd py_app && docker-compose up -d && cd -

echo-down: ## Stop echo service + filebeat
	@cd py_app && docker-compose down && cd -

clean-pyc: ## Remove complied files
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '*~' -exec rm -f {} +