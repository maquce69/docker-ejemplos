Inicia sesión en [[play-with-docker ](https://training.play-with-docker.com/ops-s1-hello/)](https://training.play-with-docker.com/beginner-linux/#Task_2) para acceder a tu terminal PWD.

Deberás escribir tu nombre y tu contraseña, pero para ello debes estar previamente registrado en Docker.

<img width="444" alt="image" src="https://github.com/maquce69/docker-ejemplos/assets/53044971/267e6868-3d8e-4937-a195-c724aa4eefaf">

En Play with Docker vamos a utilizar este comando:
- DOCKERID=TUUSUARIO
- git clone tu repositorio
- docker build -t quiros/quirosweb:0.1 .
- docker run -d -p 80:80 --name servidor_web quiros/quirosweb:0.1
- En la pagina dar en la parte 2.7 Click here to load the website which should be running. o al 80 arriba
  
 <img width="578" alt="image" src="https://github.com/maquce69/docker-ejemplos/assets/53044971/e26b9f96-9fdc-4754-850a-634f1801e0a4">
 
- ifconfig
- curl "IP docker"

#EJEMPLOS DE DOCKERFILE
'''
FROM debian
MAINTAINER Miguel Quiros

RUN apt-get update && apt-get install -y apache2 && apt-get clean && rm -rf /var/lib/apt/lists/*

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

EXPOSE 80
ADD ["index.html","/var/www/html/"]

ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
'''
