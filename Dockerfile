FROM python:3.6.4-jessie

RUN pip install "django==2.0.7" \ 
    && pip install "gunicorn==19.9.0" \
    && pip install "mysqlclient==1.3.13" \
    && pip install "pillow==5.2" \
    && pip install "mistune==0.8.3" \
    && pip install "bleach==2.1.3" \
    && pip install "django-htmlmin==0.10.0"

WORKDIR /app
