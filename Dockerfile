FROM python:3.7-alpine

LABEL maintainer="Luis Miguel Vicente Fuentes <kijart@gmail.com>"

RUN pip install subliminal

WORKDIR /subs

ENTRYPOINT ["subliminal"]