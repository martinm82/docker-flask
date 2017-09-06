# Flask apps in Docker

## Build the Docker image

```
$ ./build.sh
```

## Run a Flask app
The application entrypoint script should be called `main.py`. If you want to use a different name pass the
environment variable (`-e FLASK_APP=<different-script.py>`) to the docker run comand.

```
$ docker run --rm -it -p 5000:5000 -e FLASK_DEBUG=1 -v <path-to-your-flask-project>:/app -w /app mart/docker-flask:<VERSION>
```


