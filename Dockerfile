FROM ubuntu:18.04
MAINTAINER T34aK<fahad.khan@tothenew.com>
RUN apt-get update 
RUN apt-get upgrade
RUN apt-get install -y nginx vim wget curl net-tools
RUN mkdir /var/www/html/abc
COPY index.html /var/www/html/abc/
COPY my.conf /etc/nginx/sites-available
RUN ln -s /etc/nginx/sites-available/my.conf /etc/nginx/sites-enabled/
RUN rm -rf /etc/nginx/sites-enabled/default.conf
RUN rm -rf /etc/nginx/sites-available/default.conf
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
ENTRYPOINT ["nginx","-g","daemon off;"]


