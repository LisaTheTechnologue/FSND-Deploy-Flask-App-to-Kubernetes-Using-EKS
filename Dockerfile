#Source image  
FROM python:stretch

#App dir
COPY . /app
WORKDIR /app

#Requirements
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

#entrypoint
ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
