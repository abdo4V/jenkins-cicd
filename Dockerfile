# Use the latest Ubuntu image
FROM ubuntu:latest

# Install dependencies and add the PHP repository
RUN apt-get update && apt-get install -y \
    software-properties-common \
    curl \
    gnupg2 \
    ca-certificates \
    lsb-release \
    && add-apt-repository ppa:ondrej/php \
    && apt-get update

# Install PHP 8.1, MySQL extension, PHP-FPM, Nginx, and other necessary packages
RUN apt-get install -y \
    php8.1 \
    php8.1-fpm \
    php8.1-mysql \
    nginx \
    && apt-get clean

# Copy the PHP website files to the appropriate directory
COPY ./src /var/www/html/

# Configure Nginx to use PHP-FPM
RUN rm /etc/nginx/sites-enabled/default
COPY ./nginx/default /etc/nginx/sites-available/default

# Expose port 80 for HTTP
EXPOSE 80

# Start PHP-FPM and Nginx services
CMD service php8.1-fpm start && nginx -g "daemon off;"

