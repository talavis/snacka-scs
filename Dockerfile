FROM nginxinc/nginx-unprivileged:alpine

LABEL org.opencontainers.image.description "The most amazing valentines card ever."

USER root
RUN apk update && apk upgrade

COPY ./index.html /usr/share/nginx/html/

USER nginx

EXPOSE 8080
