FROM python:3-alpine

RUN pip3 install mysql-connector-python

COPY get-article.py .

CMD python3 get-article.py