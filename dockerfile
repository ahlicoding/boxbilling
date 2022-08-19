FROM ubuntu:latest

# Identify the maintainer of an image
LABEL maintainer="rian@rianhariadi.com"

RUN apt-get update && apt-get upgrade -y

RUN apt-get install nginx -y

# Expose port 8004
EXPOSE 8004


FROM php:fpm-alpine
RUN apk update

RUN apk add libpng libpng-dev libjpeg-turbo-dev libwebp-dev zlib-dev libxpm-dev gd && docker-php-ext-install gd

RUN docker-php-ext-install pdo pdo_mysql    

# Last is the actual command to start up NGINX within our Container
CMD ["nginx", "-g", "daemon off;"]