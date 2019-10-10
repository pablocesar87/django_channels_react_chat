FROM python:3.7.1
ENV PYTHONUNBUFFERED 1

RUN apt-get update && apt-get install -y gettext

RUN mkdir /code
WORKDIR /code

ADD ./django_chat/requirements/default.txt /code/

RUN pip install --upgrade pip
RUN pip install -r default.txt

ADD . /code/
