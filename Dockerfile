FROM wordpress:latest

# Install curl and unzip (if they are not already installed in the base image)
RUN apt-get update && apt-get install -y curl unzip

# Set correct permissions for the WordPress plugins directory
RUN chown -R www-data:www-data /var/www/html/wp-content/plugins/

# Expose the port the container will run on
EXPOSE 80

# Command to run WordPress
CMD ["apache2-foreground"]
