FROM node:13-alpine

ENV MONGO_DB_USERNAME=admin MONGO_DB_PWD=password

RUN mkdir -p /home/myapp

COPY ./app /home/myapp

# set default dir so that next commands executes in /home/myapp dir
WORKDIR /home/myapp

# will execute npm install in /home/myapp because of WORKDIR
RUN npm install

# no need for /home/myapp/server.js because of WORKDIR
CMD ["node", "server.js"]