FROM python:3.9.13-slim

ENV DEBIAN_FRONTEND=noninteractive \
    PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirement/requirement.txt requirement/requirement.txt

RUN apt-get update \
    && apt-get install -y --no-install-recommends build-essential \
    && rm -rf /var/lib/apt/lists/*

RUN python3 -m pip install --upgrade pip \
    && pip3 install --no-cache-dir --retries 10 --timeout 180 -r requirement/requirement.txt

COPY . .

RUN useradd --create-home myLowPrivilegeUser && chown -R myLowPrivilegeUser:myLowPrivilegeUser /app

USER myLowPrivilegeUser

WORKDIR /app/src

CMD ["python3", "main.py"]
