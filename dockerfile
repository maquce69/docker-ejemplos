FROM quiros/apache2:1.0
MAINTAINER Miguel Quiros

RUN apt-get update && apt-get install -y php5 && apt-get clean && rm -rf /var/lib/apt/lists/*

EXPOSE 80
ADD ["index.php","/var/www/html/"]

ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
