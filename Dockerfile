FROM python:alpine
RUN apk add curl postgresql-dev gcc python3-dev musl-dev
# add poetry 
CMD [ "pip", "install", "django-redis-cache==1.7.1" ]