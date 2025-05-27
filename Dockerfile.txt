FROM bitnami/nginx

ADD index.html /app/
ADD index.png /app/

EXPOSE 8080
