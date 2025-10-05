FROM alpine:latest
WORKDIR /
ENV PYTHONUNBUFFERED=1
RUN apk add --update --no-cache python3 py3-pip && ln -sf python3 /usr/bin/python
RUN pip install --break-system-packages getmail6
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT /entrypoint.sh
