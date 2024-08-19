# Use the official Redis image from the Docker Hub
FROM redis:latest

# Copy the local redis.conf to the container
COPY ./config/redis.conf /usr/local/etc/redis/redis.conf

# Command to run Redis server with the custom configuration file
CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]