FROM python:3.9.12-buster
ENV FLASK_APP='app.py'
ENV FLASK_ENV='development'

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]
