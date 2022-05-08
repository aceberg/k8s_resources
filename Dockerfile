FROM ubuntu:20.04

RUN apt update && apt -y install python3-pip && pip3 install mysql-connector-python

COPY get-article.py .

CMD python3 get-article.py