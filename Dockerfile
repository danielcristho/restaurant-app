FROM python:3.9-alpine3.13 
LABEL maintener="@danielcristho"

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONBUFFERED 1

COPY ./requirements.txt /tmp/requirements.txt

WORKDIR /app

EXPOSE 3000


RUN apk update \
    && apk add gcc python3-dev \
    python -m venv /env && \
    /env/bin/pip install --upgrade pip && \
    /env/bin/pip install -r /tmp/requirements.txt \
    rm -rf /tmp && \
    adduser \
        --disabled-password \
        --no-create-home \ 
        dev-user

ENV PATH="/env/bin:$PATH"

COPY . . 

USER dev-user
