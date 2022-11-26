# FROM node:18.12.1-alpine as build
# WORKDIR /app

# RUN npm install -g @angular/cli

# COPY ./package.json .
# RUN npm install
# COPY . .
# RUN ng build

# FROM nginx as runtime
# COPY --from=build /app/dist/angular-docker /usr/share/nginx/html

FROM node:18.12.1-alpine
WORKDIR /app

COPY package.json .

RUN npm install
COPY . .
EXPOSE 4200 49153

CMD npm run start