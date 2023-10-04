FROM alexwijn/docker-git-php-composer

LABEL maintainer="Claudio Valerio <info@claudiovalerio.it>"


RUN curl https://getcomposer.org/installer | php

WORKDIR /src

RUN git clone https://github.com/browscap/browscap.git

WORKDIR /src/browscap


RUN composer install

ENTRYPOINT ["bin/browscap", "build", "20231004"]