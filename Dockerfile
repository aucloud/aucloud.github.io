FROM python:slim

WORKDIR /app

RUN apt update

RUN apt install -y \
                git \
                gcc \
                g++ \
                libpangocairo-1.0-0

RUN pip install mkdocs

COPY requirements.txt .

RUN pip install --upgrade pip setuptools
RUN pip install --upgrade -r requirements.txt

COPY . .