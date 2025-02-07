FROM nginxinc/nginx-unprivileged:alpine

LABEL org.opencontainers.image.description "The most amazing valentines card ever."

USER root
RUN apk update && apk upgrade

COPY ./index.html /usr/share/nginx/html/
COPY ./Dockerfiles/nginx.conf /etc/nginx/conf.d/default.conf

USER nginx

EXPOSE 8080
