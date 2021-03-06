# base image
FROM node:16.4.1

# set working directory
WORKDIR /app

# add app
COPY . /app

# install and cache app dependencies
COPY package.json /app/package.json
RUN npm install
RUN npm install -g @angular/cli@7.3.9

# add app
COPY . /app

# start app
CMD ng serve --host 0.0.0.0
