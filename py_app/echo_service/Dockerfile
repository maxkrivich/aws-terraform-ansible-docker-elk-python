FROM python:3.8-alpine

WORKDIR /app/echo

RUN apk add build-base

COPY Pipfile* ./
RUN pip install --no-cache-dir pipenv && \
    pipenv install --system --deploy --clear

COPY ./server.py .
COPY ./entrypoint.sh .
RUN chmod +x ./entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
