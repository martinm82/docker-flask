FROM mart/docker-base:v1.0.0

LABEL maintainer="Martin Migasiewicz <martin.sm@web.de>"

RUN pip3 install \
            Flask==1.0.2 \
            requests==2.19.1 \
            beautifulsoup4==4.6.3 \
            lxml==4.2.5 \
            Flask-HTTPAuth==3.2.4 \
            jinja2==2.10

ENV FLASK_APP=main.py
ENV FLASK_DEBUG=0
WORKDIR /app

EXPOSE 5000
ENTRYPOINT ["flask", "run", "--host=0.0.0.0"]
