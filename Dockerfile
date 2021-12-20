FROM node:17
RUN mkdir /app

WORKDIR /app

ADD ./package*.json /app/

RUN npm cache clean --force

RUN rm -rf node_modules

RUN npm install

ADD . /app/

CMD ["bash", "entrypoint.sh"]
