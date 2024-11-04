FROM    python:alpine3.20

WORKDIR /srv/app
COPY    .   .
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE  5000
ENTRYPOINT  [ "python", "app.py" ]
