FROM python:3.9.13
 
ENV DEBIAN_FRONTEND=noninteractive
 
WORKDIR /app
COPY . .

RUN python3 -m pip install --upgrade pip \
    && pip3 install --no-cache-dir --retries 10 --timeout 180 -r requirements/requirement.txt

WORKDIR /app/src
 
CMD ["sh", "-c", "python3 main.py"]
 
