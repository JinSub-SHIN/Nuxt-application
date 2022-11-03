FROM node:16.13.2

WORKDIR /app
ADD . /app/

RUN npm install && npm run build

ENV HOST 0.0.0.0

EXPOSE 3000

CMD ["npm" , "start"]