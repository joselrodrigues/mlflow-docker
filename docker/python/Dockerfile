FROM python:3.9

WORKDIR /app

COPY requirements.txt .

RUN pip install --upgrade pip && pip install --no-cache-dir -r requirements.txt

CMD ["tail", "-f", "/dev/null"]
