FROM python:3.13-alpine

RUN apk add tini

ADD . /tmp/src

RUN pip install /tmp/src

ENV PYTHONUNBUFFERED=1
ENTRYPOINT ["tini", "--"]
