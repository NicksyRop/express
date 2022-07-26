FROM node:16
WORKDIR /app
COPY . .
ENV DEBUG=express:*
RUN npm ci
CMD npm start