FROM python:3.11.6

RUN apt update && apt upgrade -y
RUN pip install --upgrade pip

WORKDIR /var/www/base_fastapi
COPY . .
RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "5000", "--reload"]
