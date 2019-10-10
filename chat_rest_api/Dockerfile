FROM python:3.7.1
ENV PYTHONUNBUFFERED 1

RUN apt-get update && apt-get install -y gettext

RUN mkdir /code
WORKDIR /code

ADD ./chat_rest_api/requirements/default.txt /code/

RUN pip install --upgrade pip
RUN pip install -r default.txt

ADD . /code/
