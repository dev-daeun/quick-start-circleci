setup:
	python3 -m venv ~/.quick_start_docker

install:
	pip install -r requirement.txt

test:
	python -m pytest -vv --cov=quick-start-docker tests/*.py
	python -m pytest --nbval notebook.ipynb

lint:
	pylint --disable=R,C quick-start-docker cli web

all:
	install lint test
