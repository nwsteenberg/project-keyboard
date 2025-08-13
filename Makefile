
install-tools:
	sudo npm install -g @devcontainers/cli

devcontainer-build:
	devcontainer build --workspace-folder=${PWD}
	devcontainer up --workspace-folder=${PWD}

devcontainer-run-nvim:
	devcontainer exec --workspace-folder=${PWD} bash

devcontainer-stop:
	$(eval containerId := $(shell docker ps --filter label=IMAGE_TYPE=devcontainer --format "{{.ID}}"))
	docker stop "$(containerId)" 
	docker rm "$(containerId)"
