FROM mart/docker-base:v1.0.0

LABEL maintainer="Martin Migasiewicz <martin.sm@web.de>"

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
