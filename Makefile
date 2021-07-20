.PHONY: build start

ifeq ($(JLANG_DIR),)
  JLANG_DIR := $(HOME)/git/jlang
endif

DOCKER_IMAGE := jlang
VOLUMES := -v $(JLANG_DIR)/scripts:/opt/scripts -v $(JLANG_DIR)/data:/opt/data

start:
	docker run -it --rm $(VOLUMES) $(DOCKER_IMAGE)

build:
	docker build -t $(DOCKER_IMAGE) .
