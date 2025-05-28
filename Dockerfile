FROM bitnami/nginx

ADD index.html /app/
ADD index.png /app/

# RUN chown -R 1001:0 /app
RUN chown -R 777 /app


EXPOSE 8080
