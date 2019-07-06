REPO=registry.gitlab.com/docker-master/dockertools


##########################
# Build images      	 #
##########################
.PHONY: push-images
push-images: 
	docker build -t $(REPO)/$(IMG):$(V) docker/$(IMG)/$(V)
	docker push $(REPO)/$(IMG)

--build-images:
	@if [ $(V) ]; then\
		docker build -t $(REPO)/$(IMG):$(V) docker/$(IMG)/$(V);\
	else\
		docker build -t $(REPO)/$(IMG) docker/$(IMG);\
	fi