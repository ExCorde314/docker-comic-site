FROM grahamdumpleton/mod-wsgi-docker:python-3.5

RUN apt-get update && \
            apt-get install -y --no-install-recommends git \
            python-pip \
            python-dev \
            libmysqlclient-dev \
        unattended-upgrades && \
            rm -r /var/lib/apt/lists/*

RUN pip install --upgrade pip \ 
    && pip install "django==2.0" \ 
    && pip install "mysqlclient==1.3.12" \
    && pip install "pillow==5.0" \
    && pip install "mistune==0.8.3" \
    && pip install "bleach==2.1.2" \
    && pip install "django-htmlmin==0.10.0"

ENV LANG=en_US.UTF-8 PYTHONHASHSEED=random \
    PATH=/usr/local/python/bin:/usr/local/apache/bin:$PATH \
    MOD_WSGI_USER=www-data MOD_WSGI_GROUP=www-data

WORKDIR /app