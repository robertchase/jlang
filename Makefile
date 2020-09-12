.PHONY: build start

ifeq ($(GIT),)
  GIT := $(HOME)/git
endif

DOCKER_IMAGE := jlang
VOLUMES := -v $(GIT)/jlang/scripts:/opt/scripts -v $(GIT)/jlang/data:/opt/data

start:
	docker run -it --rm $(VOLUMES) $(DOCKER_IMAGE)

build:
	docker build -t $(DOCKER_IMAGE) .
