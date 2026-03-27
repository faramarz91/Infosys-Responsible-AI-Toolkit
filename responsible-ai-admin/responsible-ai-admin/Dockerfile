FROM python:3.9.13-slim

ENV DEBIAN_FRONTEND=noninteractive \
    PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirement/requirement.txt requirement/requirement.txt

RUN pip3 install --no-cache-dir -r requirement/requirement.txt

COPY . .

RUN useradd --create-home myLowPrivilegeUser && chown -R myLowPrivilegeUser:myLowPrivilegeUser /app

USER myLowPrivilegeUser

WORKDIR /app/src

CMD ["python3", "main.py"]
