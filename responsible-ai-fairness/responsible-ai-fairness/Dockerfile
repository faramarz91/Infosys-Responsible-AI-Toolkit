FROM python:3.9.13-slim

ENV DEBIAN_FRONTEND=noninteractive \
    PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    ACCESS_KEY= \
    SECRET_KEY=

WORKDIR /app

COPY requirements/requirements.txt requirements/requirements.txt

RUN pip install --no-cache-dir -r requirements/requirements.txt

COPY . .

WORKDIR /app/src

EXPOSE 8000

CMD ["python", "main_api.py"]
