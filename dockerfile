 FROM nginx:latest
MAINTAINER Miguel Quiros

 COPY index.html /usr/share/nginx/html
 COPY pio.png /usr/share/nginx/html

 EXPOSE 80 443     

 CMD ["nginx", "-g", "daemon off;"]
