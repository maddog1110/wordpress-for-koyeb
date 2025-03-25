FROM wordpress:latest

# Install curl and unzip (if they are not already installed in the base image)
RUN apt-get update && apt-get install -y curl unzip

# Download and install PostgreSQL plugin for WordPress
RUN curl -L -o /tmp/pg4wp.zip https://github.com/PostgreSQL-For-Wordpress/postgresql-for-wordpress/archive/refs/tags/v3.3.1.zip && \
    unzip /tmp/pg4wp.zip -d /var/www/html/wp-content/plugins/ && \
    rm /tmp/pg4wp.zip

# Set correct permissions for the WordPress plugins directory
RUN chown -R www-data:www-data /var/www/html/wp-content/plugins/

# Expose the port the container will run on
EXPOSE 80

# Command to run WordPress
CMD ["apache2-foreground"]
