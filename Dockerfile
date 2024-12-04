FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y nginx && apt-get clean
RUN rm -rf /var/www/html/*
WORKDIR /var/www/html
COPY * /var/www/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
#EXPOSE 80




