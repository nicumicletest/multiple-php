FROM alpine

RUN apk update
#RUN apt install apache2 libapache2-mod-fcgid --yes

# add ondrej
RUN apk add software-properties-common --yes
RUN add-apt-repository ppa:ondrej/php --yes

# install PHP
#RUN apt install php5.6 php5.6-fpm --yes
#RUN apt install php7.0 php7.0-fpm --yes
#RUN apt install php7.3 php7.3-fpm --yes
#RUN apt install php8.0 php8.0-fpm --yes
#RUN apt install php8.1 php8.1-fpm --yes
#RUN apt install php8.2 php8.2-fpm --yes

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

#ENTRYPOINT ["tail", "-f", "/dev/null"]
## update-alternatives --config php
## update-alternatives --set php /usr/bin/php5.6


