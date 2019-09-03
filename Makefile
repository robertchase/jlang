.PHONY: build start

ifeq ($(GIT),)
  GIT := $(HOME)/git
endif

DOCKER_IMAGE := jlang

start:
	docker run -it --rm -v $(GIT)/jlang/scripts:/opt/scripts $(DOCKER_IMAGE)

build:
	docker build -t $(DOCKER_IMAGE) .
