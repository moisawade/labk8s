FROM bitnami/nginx:latest

USER root

# Crée un dossier accessible
RUN mkdir -p /app && chown -R 1001:0 /app

# Copie les fichiers HTML
ADD index.html /app/
ADD index.png /app/

# Revenir à l'utilisateur non-root
USER 1001

# Définir le répertoire public
ENV NGINX_DOCUMENT_ROOT="/app"

EXPOSE 8080
