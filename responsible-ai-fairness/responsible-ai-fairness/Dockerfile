FROM python:3.9.13-slim

ENV DEBIAN_FRONTEND=noninteractive \
    PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    ACCESS_KEY= \
    SECRET_KEY=

WORKDIR /app

COPY requirements/requirements.txt requirements/requirements.txt
COPY lib/ lib/

RUN apt-get update \
    && apt-get install -y --no-install-recommends build-essential \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app/requirements

RUN python3 -m pip install --upgrade pip \
    && pip install --no-cache-dir --retries 10 --timeout 180 -r requirements.txt

WORKDIR /app

COPY . .

WORKDIR /app/src

EXPOSE 8000

CMD ["python", "main_api.py"]
