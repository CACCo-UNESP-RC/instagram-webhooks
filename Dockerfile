FROM python:3.12.3-alpine3.20
WORKDIR /app
COPY requirements.txt .
RUN python -m venv venv
RUN venv/bin/pip install --upgrade pip
RUN venv/bin/pip install -r requirements.txt
COPY main.py .
# CMD ["venv/bin/python", "main.py"]