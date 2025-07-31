FROM node:18

WORKDIR /app

# Install n8n globally
RUN npm install -g n8n

# Add required packages (if needed)
RUN apt-get update && apt-get install -y curl

# Copy script
COPY start.sh /app/start.sh
RUN chmod +x /app/start.sh

# Expose ports
EXPOSE 5678 3231

# Launch both services
CMD ["./start.sh"]
