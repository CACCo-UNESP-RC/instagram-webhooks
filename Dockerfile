FROM python:3.12.3-alpine3.20
WORKDIR /app
COPY --chmod=775 requirements.txt /app
COPY --chmod=775 main.py /app
RUN pip install -r requirements.txt
CMD ["python", "main.py"]