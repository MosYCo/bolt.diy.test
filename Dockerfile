# Use official Node.js image
    FROM node:18-alpine

    # Set working directory
    WORKDIR /app

    # Copy package.json and package-lock.json
    COPY package*.json ./

    # Install dependencies
    RUN npm install

    # Copy all files
    COPY . .

    # Build the project
    RUN npm run build

    # Expose port
    EXPOSE 3000

    # Start the application
    CMD ["npm", "run", "preview"]
