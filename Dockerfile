FROM python:3.10
LABEL maintainer="RCaldas <docker@rcaldas.com>"

RUN apt update && apt upgrade -y
RUN apt install -y default-libmysqlclient-dev && apt clean

RUN pip install --upgrade pip
COPY requirements.txt .
RUN pip install -r requirements.txt

WORKDIR /app
COPY . .

CMD ["gunicorn", "-w1", "--reload", "--timeout=60", "-b:8000", "--access-logfile=-", "--error-logfile=-", "conexaoh2v.wsgi"]
EXPOSE 8000
