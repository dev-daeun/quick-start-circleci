FROM python:3.7.3-stretch

COPY . flask_app/

WORKDIR flask_app

# hadolint ignore=DL3013
RUN pip install --upgrade pip && pip install --trusted-host pypi.python.org -r requirement.txt
