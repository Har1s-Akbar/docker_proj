FROM python:3.11-slim

ENV PYTHONUNBUFFERED = 1
ENV PYTHONDONTWRITEBYTECODE 1

WORKDIR /project

COPY . /project/

RUN pip install pipenv && pipenv install --system

COPY . /project/