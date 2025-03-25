FROM wordpress:latest

# Install required dependencies
RUN apt-get update && apt-get install -y unzip curl && rm -rf /var/lib/apt/lists/*

# Download and install PostgreSQL for WordPress plugin
RUN curl -L -o /tmp/pg4wp.zip https://downloads.wordpress.org/plugin/postgresql-for-wordpress.1.3.2.zip && \
    unzip /tmp/pg4wp.zip -d /var/www/html/wp-content/plugins/ && \
    rm /tmp/pg4wp.zip

# Set correct permissions
RUN chown -R www-data:www-data /var/www/html/wp-content/plugins/postgresql-for-wordpress

CMD ["apache2-foreground"]
