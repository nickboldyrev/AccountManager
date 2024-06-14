FROM python:3.11-slim

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

WORKDIR /app/AccountManagerDjango

CMD python manage.py migrate \
    && python manage.py runserver 0.0.0.0:8000