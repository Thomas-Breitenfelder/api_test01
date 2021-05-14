FROM tiangolo/meinheld-gunicorn:python3.8-alpine3.11
RUN apk --update add bash nano gcc libc-dev
RUN apk add --no-cache --update librdkafka librdkafka-dev --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/community
COPY requirements.txt /var/www/requirements.txt
RUN pip install --no-cache-dir -r /var/www/requirements.txt
COPY ./app /app