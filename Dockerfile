FROM python:2.7

RUN mkdir -p /mnt # to mount trash, config(& DB) directory
WORKDIR /usr/app/src

COPY clear_trash ./

CMD ["./clear_trash", "--configfile", "/mnt/data/clear_trash.cfg"]
