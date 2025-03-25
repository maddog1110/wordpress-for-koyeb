FROM wordpress:latest

# Install required dependencies
RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Download and install the PostgreSQL for WordPress plugin
RUN curl -L -o /tmp/pg4wp.zip https://github.com/PostgreSQL-For-Wordpress/postgresql-for-wordpress/releases/download/v3.3.1/postgresql-for-wordpress.zip \
    && unzip /tmp/pg4wp.zip -d /var/www/html/wp-content/plugins/ \
    && rm /tmp/pg4wp.zip

# Set the correct file permissions
RUN chown -R www-data:www-data /var/www/html/wp-content/plugins/

# Expose port 80 for the web server
EXPOSE 80

# Start the WordPress container
CMD ["apache2-foreground"]
