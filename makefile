deploy: check-env
	terraform init; \
	terraform apply -auto-approve

build:
	cd functions && npm i && func pack

check-env:
	@for var in terraform az func; do \
		if ! command -v $$var &> /dev/null; then \
			echo "$$var could not be found"; \
			exit 1; \
		fi; \
	done
	
test:
	@curl --silent `terraform output -raw api_url`?name=friend | grep "Hello, friend. This HTTP triggered function executed successfully." > /dev/null && \
	echo "TEST PASS" || echo "TEST FAIL"

destroy:
	terraform init; \
	terraform destroy -auto-approve
