# Base image
FROM node:lts-buster

# Set working directory
WORKDIR /

# Only copy package.json (no lock file)
COPY package.json .

# Install dependencies (no lock file used)
RUN npm install --omit=dev

# Copy the rest of the application files
COPY . .

# Expose your port
EXPOSE 9090

# Start the app using npm
CMD ["npm", "start"]
