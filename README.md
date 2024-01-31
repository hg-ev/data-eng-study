# Docker Python Database Study

## An exploration of a modern data stack

### Big Idea
This looks into using the following tools:
- [postgres](https://www.postgresql.org/) as the database
- [dbt](https://www.getdbt.com/) for etl
- [apache superset](https://superset.apache.org/) for the data viz

### General Flow
We aim to be able to load data into the database somehow, that is a future endevour. We then transform the data using `dbt`. This is done through a series of create tables/views using the raw data in the db. Afterwards we use superset to vizualize the end product.

## Prerequisites
- [docker](https://docs.docker.com/desktop/install/mac-install/)
- [docker compose](https://docs.docker.com/compose/install/)

## Setup
1. run `docker-compose up`

### Postgres
You don't actually have to do anything here. The main things going on are the env variables that configure the database connection. Those are in the `.env` file and are silly. The data itself is in a `database/setup.sql` file. It is automatically ran to create the database for you when the container is setup. We also provide a `database/volume` folder that is mounted to the database container to get other data files in if needed.

### Setup DBT
Normally you will need to setup `dbt` if you havent already, but I providede the files necessary that are generated after setup.

I also added a `dbt/dbt/models/world/city_view.yml` and sql file to create a view as a tester. Your database won't have that view at first, so in order to run it, you run `docker-compose run -it dbt run`. This will look into the files and generate the view accordingly.

### Setup Superset
Working on it!