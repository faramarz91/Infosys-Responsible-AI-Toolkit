FROM python:3.9.13
 
ENV DEBIAN_FRONTEND=noninteractive 
 
WORKDIR /app
COPY . .

RUN apt-get update \
    && apt-get install -y --no-install-recommends wkhtmltopdf libqt5core5a \
    && rm -rf /var/lib/apt/lists/*

RUN python3 -m pip install --upgrade pip \
    && pip3 install --no-cache-dir --retries 10 --timeout 180 -r requirements/requirement.txt

# Optional optimization only when the target library path exists.
RUN if [ -f /usr/lib/x86_64-linux-gnu/libQt5Core.so.5 ]; then \
      strip --remove-section=.note.ABI-tag /usr/lib/x86_64-linux-gnu/libQt5Core.so.5; \
    fi

WORKDIR /app/src
 
CMD ["sh", "-c", "python3 main.py"]
