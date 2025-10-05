FROM alpine:latest
WORKDIR /
ENV PYTHONUNBUFFERED=1
RUN apk add --update --no-cache python3 py3-pip py3-getmail6 && ln -sf python3 /usr/bin/python
RUN pip install getmail6
ENV conf_file /getmail6.conf
ENTRYPOINT getmail --rcfile $conf_file $GETMAIL_OPTIONS
