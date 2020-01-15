SHELL := /bin/bash

validate_circleci:
	circleci config process .circleci/config.yml

run_circleci_local:
	circleci local execute

setup_python_environ:
	python3 -m venv venv
	source venv/bin/activate

install_pip:
	pip install --upgrade pip && pip install -r requirement.txt

lint_python:
	pylint --disable=R,C,W1203 *.py

lint_dockerfile:
	docker pull hadolint/hadolint
	docker run --rm -i hadolint/hadolint < Dockerfile

#test:
#	python -m pytest -vv --cov=quick-start-docker tests/*.py
#	python -m pytest --nbval notebook.ipynb

all:
	install lint test
