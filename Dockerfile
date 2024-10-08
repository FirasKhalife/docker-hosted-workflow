FROM python:3.8-slim-buster

WORKDIR /python-test

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

RUN pytest
CMD [ "python3", "main.py"]