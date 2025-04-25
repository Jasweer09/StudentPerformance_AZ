FROM python:3.7-slim-buster
WORKDIR /app
COPY . .
RUN apt update -y

RUN apt-get update && pip install -r requirements.txt
CMD ["python3", "app.py"]
