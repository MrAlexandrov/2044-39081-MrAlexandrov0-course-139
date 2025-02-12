FROM python:3.10-slim

WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
COPY main.py main.py
EXPOSE 8000
CMD ["python", "main.py"]
