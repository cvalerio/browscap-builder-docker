FROM alexwijn/docker-git-php-composer

RUN curl https://getcomposer.org/installer | php

WORKDIR /src

RUN git clone https://github.com/browscap/browscap.git

WORKDIR /src/browscap


RUN composer install

ENTRYPOINT ["bin/browscap", "build"]