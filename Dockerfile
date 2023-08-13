FROM python:alpine
RUN apk add curl postgresql-dev gcc python3-dev musl-dev
# add poetry 
COPY requirements.txt requirements.txt 
RUN pip install -r requirements.txt
CMD [ "pip", "install", "django-redis-cache==1.7.1" ]