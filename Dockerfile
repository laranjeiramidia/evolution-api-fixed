FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
COPY .npmrc ./
RUN npm install --legacy-peer-deps --force
COPY . .
RUN npm run build
EXPOSE 8080
CMD ["npm", "run", "start:prod"]
