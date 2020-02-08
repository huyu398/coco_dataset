FROM python:3.7.6-buster

WORKDIR /app

COPY ./requirements.txt ./requirements.txt
COPY ./annotations      ./annotations

RUN pip install Cython==0.29.14 numpy==1.17.4
RUN pip install -r ./requirements.txt
