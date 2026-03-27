FROM python:3.9.13-slim

ENV DEBIAN_FRONTEND=noninteractive \
    PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements/requirement.txt requirements/requirement.txt

RUN pip install --no-cache-dir -r requirements/requirement.txt

COPY . .

WORKDIR /app/src

EXPOSE 8002

CMD ["python", "main.py"]
