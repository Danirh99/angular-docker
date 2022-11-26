# Angular with Docker

This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 15.0.0.

## 1 - Install Angular CLI

Run `sudo npm install -g @angular/cli`

## 2 - Create Angular Project

Go to the folder where the project will be and we create it with  `ng new project-name` for me `ng new angular-docker`

## 3 - Run the Application

Run the application to check that it is working correctly `cd project-name` for me `cd angular-docker` and run `ng serve`. After this
navigate to `http://localhost:4200/`. If it is good close `ng serve` with `ctrl C`

## 4 - Create & Edit Dockerfile

In the root of the project we create a Dockerfile

## 5 - Edit package.json

In `package.json` change `"start": "ng serve"` for `"start": "ng serve --host 0.0.0.0 --poll 500"`

## 6 - Create .dockerignore

In the root of the project we create a .dockerignore and add `dist` & `node_modules`

## 7 - Create docker-compose.yaml
In the root of the project we create a docker-compose.yaml

## 8 - Run Dockerfile
Run `docker build -t name_image . --network="host"` in my case `docker build -t angular-app . --network="host"`

## 9 - Run docker-compose
Run `docker-compose up -d`

## 10 - Check the Application
Navigate to `http://localhost:4200/` and you will see Angular App