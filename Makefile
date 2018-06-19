.PHONY: help start test clean clean-build clean-pyc 

init:
	@python setup.py install

help:
	@echo "start - starts the root chain"
	@echo "test - starts the child chain"
	@echo "clean-build - remove build artifacts"
	@echo "clean-pyc - remove Python file artifacts"

start:
	@python main.py

test: 
	@pytest

clean: clean-build \
	clean-pyc

clean-build:
	rm -fr build/
	rm -fr dist/
	rm -fr *.egg-info

clean-pyc:
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '*~' -exec rm -f {} +
	find . -name '__pycache__' -exec rmdir {} +o
	rm -fr .pytest_cache/