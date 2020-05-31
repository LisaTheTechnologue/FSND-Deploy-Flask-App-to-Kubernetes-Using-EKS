# source image
FROM python:stretch

# install requirements
COPY requirements.txt /home/jolisa/deploy-flask-app/requirements.txt
WORKDIR /home/jolisa/deploy-flask-app
RUN pip install -r requirements.txt

COPY . /home/jolisa/deploy-flask-app
RUN pip install --upgrade pip

# run port
EXPOSE 8080

# set up entrypoint
CMD ["gunicorn","-b","0.0.0.0:8080","main:APP"]
