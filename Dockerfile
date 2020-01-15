FROM python:3.7.3-stretch

RUN mkdir /home/my_flask
WORKDIR /home/my_flask

COPY . /home/my_flask/

# hadolint ignore=DL3013
RUN pip install --upgrade pip && pip install --trusted-host pypi.python.org -r requirement.txt

WORKDIR /home/my_flask/flask_app

EXPOSE 5001

CMD flask run --port=5001 --host=0.0.0.0
