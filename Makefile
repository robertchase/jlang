.PHONY: build start

DOCKER_IMAGE := jlang

start:
	docker run -it --rm -v $(HOME)/git/jlang/scripts:/opt/scripts $(DOCKER_IMAGE)

build:
	docker build -t $(DOCKER_IMAGE) .
