BUILDER=gregorwebmaster/dockertools:builder
DEVSERV=gregorwebmaster/dockertools:devserv
WPDEBUG=gregorwebmaster/dockertools:wp-debug
BUILD_CONTAINER=dockertools-builder
TEST_CONTAINER=dockertools-tester
DEBUG_CONTAINER=dockertools-debuger

##########################
# Build docker images    #
##########################

wp-debug:
	docker build -t $(WPDEBUG) ./docker/wp-xdebuge