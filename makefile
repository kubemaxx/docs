# Makefile 

.PHONY: help

help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  run        to run locally"
	@echo "  install    to install dependencies"
	@echo "  build      to build the docs"
	@echo "  deploy     to deploy the docs"

install:
	pip install mkdocs-material mkdocs-minify-plugin mkdocs-redirects

build:
	mkdocs build

run:
	mkdocs serve

deploy:
	mkdocs gh-deploy
