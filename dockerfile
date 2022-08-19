# production stage
FROM nginx:stable-alpine as production-stage


# Identify the maintainer of an image
LABEL maintainer="rianhariadi@gmail.com"
#WORKDIR /app
#COPY . . 
COPY nginx.conf /etc/nginx/conf.d/default.conf!
#COPY /src /usr/share/nginx/html
EXPOSE 80
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]



#FROM php:fpm-alpine
#RUN apk update

#RUN apk add libpng libpng-dev libjpeg-turbo-dev libwebp-dev zlib-dev libxpm-dev gd && docker-php-ext-install gd

#RUN docker-php-ext-install pdo pdo_mysql    
#EXPOSE 9000
#CMD ["php-fpm"]

# Last is the actual command to start up NGINX within our Container
# CMD ["nginx", "-g", "daemon off;"]