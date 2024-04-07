FROM node:20

WORKDIR /app

COPY bin/ ./ 
COPY package*.json ./
COPY app.js ./
COPY public/stylesheets/ ./public/stylesheets/
COPY controllers/ ./controllers/
COPY models/ ./models/
COPY routes/ ./routes/
COPY views/ ./views/

RUN npm install

EXPOSE 9000

# Cambia el comando CMD para iniciar la aplicación como lo haces con npm start
CMD ["npm", "start"]
