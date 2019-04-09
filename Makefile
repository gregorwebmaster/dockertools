BUILDER=gregorwebmaster/dockertools:builder
XDEBUG=gregorwebmaster/dockertools:xdebug
WPDEBUG=gregorwebmaster/dockertools:wp-debug

##########################
# Build docker images    #
##########################

builder:
	docker build -t $(BUILDER) ./docker/builder

xdebug:
	docker build -t $(XDEBUG) ./docker/xdebug

wp-debug:
	docker build -t $(WPDEBUG) ./docker/wp-debug