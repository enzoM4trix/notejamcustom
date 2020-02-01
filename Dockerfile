FROM python:2


WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

RUN mkdir -p /data
WORKDIR /data/notejam/flask
CMD ["export", "ENVIRONMENT=development"]
CMD ["python", "runserver.py"]
