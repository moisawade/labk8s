FROM bitnami/nginx

# # ADD index.html /app/
# # ADD index.png /app/

ADD index.html /opt/bitnami/nginx/html
ADD index.png /opt/bitnami/nginx/html

EXPOSE 8080
