FROM python:3.9-alpine3.13 
LABEL maintener="@danielcristho"

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONBUFFERED 1

COPY /requirements.txt /app/requirements.txt

WORKDIR /app


RUN apk update \
    && apk add gcc python3-dev

RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

RUN adduser \
    --disabled-password \
    --no-create-home \ 
    dev-user

#ENV PATH="/env/bin:$PATH"

COPY . . 




USER dev-user
