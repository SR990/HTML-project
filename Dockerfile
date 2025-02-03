FROM ubuntu
MAINTAINER "Samson"

# Install necessary packages
RUN apt update && apt install -y apache2 curl

# Copy website files into the container
COPY ./*  /var/www/html/

# Enable necessary Apache modules (you might need proxy and SSL)
RUN a2enmod proxy proxy_http ssl

# Set up Apache to run in the foreground
CMD ["apachectl", "-D", "FOREGROUND"]

# Expose port 80 to the Docker container (internal usage)
EXPOSE 80
