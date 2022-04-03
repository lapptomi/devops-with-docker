FROM ubuntu:latest

COPY script.sh .

RUN apt-get -y update && apt-get -y install git && apt-get -y install docker.io

CMD ["sh", "script.sh"]