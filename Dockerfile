FROM    python:alpine3.20

WORKDIR /srv/app
COPY    .   .
RUN python -m venv /src/app && \
    source ./bin/activate && \
    pip install --no-cache-dir -r requirements.txt

USER    daemon
EXPOSE  5000
ENTRYPOINT  [ "python", "app.py" ]
