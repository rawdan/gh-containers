FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS mycluster0.qdcstah.mongodb.net
ENV MONGODB_USERNAME bogdan
ENV MONGODB_PASSWORD FwFYT9a9XeRdglgH

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]