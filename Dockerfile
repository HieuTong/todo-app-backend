# Use Node.js official image as base image
FROM node:16

WORKDIR /app

COPY package.json .
RUN npm install

COPY . .

# Expose the app on port 5000
EXPOSE 5000

CMD ["node", "server.js"]
