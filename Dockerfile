FROM python:3.4
ENV PYTHONUNBUFFERED 1
RUN mkdir /src
RUN mkdir /src/requirements
WORKDIR /src
ADD urbvan/requirements/base.txt /src/urbvan/requirements/
RUN pip install -r urbvan/requirements/base.txt
ADD . /src/
