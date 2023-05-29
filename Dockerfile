
FROM ubuntu:20.04

RUN apt update
ENV DEBIAN_FRONTEND=noninteractive

RUN apt install -y apache2
RUN apt install -y php
COPY html /var/www/html/

WORKDIR /var/www/html/

EXPOSE 5000:80

CMD service apache2 start && bash
