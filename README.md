# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

* CREACION DE APP RAILS CON DOCKER
- crear el Dockerfile con las especificaciones de la version de ruby
- ejecutamos docker build -t test_app .
- creamos la app con este comando docker run --rm -v ${PWD}:/test_app test_app rails new . --force --no-deps --database=postgresql
- crear el Dockerfile.dev y el docker-compose.dev.yml
- para levantar el contenedor usamos este comando docker-compose -f docker-compose.dev.yml up --build
- para bajar el contenedor y eliminar los volumenes docker-compose -f docker-compose.dev.yml down --volumes --remove-orphans
- si queremos tener nuestra terminal de rails interactiva docker-compose -f docker-compose.dev.yml run web bash
