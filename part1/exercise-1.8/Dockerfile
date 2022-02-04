FROM ubuntu:20.04

WORKDIR /usr/src/app

RUN apt update && apt upgrade && apt install curl -y

COPY ./scriptfile.sh .

CMD ["sh", "scriptfile.sh"]