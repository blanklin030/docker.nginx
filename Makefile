.PHONY: clean build

SHELL := /bin/bash
NAME=demo
BUILD_DATE=$(shell date '+%Y%m%d')
BUILD_VERSION=$(shell git log -1 --pretty=format:%h)

build:
	docker build -t $(NAME):$(BUILD_DATE)-$(BUILD_VERSION) .
	docker run --name mynginx -p 8080:8080 -v /usr/local/log:/var/log/nginx -d $(NAME):$(BUILD_DATE)-$(BUILD_VERSION)