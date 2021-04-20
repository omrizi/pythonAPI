FROM python:3.7-alpine
MAINTAINER OMRIKI

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirments.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN add user -D pythonUser
USER pythonUser

