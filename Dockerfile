FROM python:2


WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

RUN mkdir -p /data
WORKDIR /data/notejam/flask

CMD ["python", "runserver.py"]
