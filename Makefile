PATH := $(shell pwd)
builder=@docker run -v /workspace/code/docker/dockertools:/workspace --rm --name dockertools-builder gregorwebmaster/dockertools:builder npm install --dd

print:
	echo $(PATH)

npm_install:
	$(shell exec "docker --version")

composer_install:
	$(shell $(BUILDER) composer install)

assets_dev:
	$(shell docker run -v $(shell pwd):/workspace --rm --name dockertools-builder gregorwebmaster/dockertools:builder npm run dev)
