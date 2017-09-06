FROM ubuntu:xenial-20170802

MAINTAINER <martin.sm@web.de>

ARG DEBIAN_FRONTEND=noninteractive

COPY apt-conf /etc/apt/apt.conf.d/

# Ensure that locale is set
RUN apt-get update && \
    apt-get install locales

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en

RUN apt-get update && \
    apt-get install \
                python3 \
                python3-pip

RUN pip3 install \
            pip==9.0.1 \
            setuptools==36.2.7

RUN pip3 install \
            Flask==0.12.2 \
            requests==2.18.3 \
            beautifulsoup4==4.6.0 \
            lxml==3.8.0 \
            Flask-HTTPAuth==3.2.3

ENV FLASK_APP=main.py
ENV FLASK_DEBUG=0
WORKDIR /app

EXPOSE 5000
ENTRYPOINT ["flask", "run", "--host=0.0.0.0"]
