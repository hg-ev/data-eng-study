# Docker Python Database Study

### A starter project to help you do big data science locally

## Prerequisites
- (docker)[https://docs.docker.com/desktop/install/mac-install/]
- (docker compose)[https://docs.docker.com/compose/install/]
- python
- pip

## Quickstart
1. edit `setup.sql` to match the columns from your csv file
1. run `docker-compose up`
1. copy data file into `db` folder
1. run `docker exec -it db psql -U unicorn_user -d rainbow_database`
1. you're now in your database
1. run `\copy your-table-name FROM '/db/your-file.csv' DELIMITER ',' CSV HEADER`
1. run `select count(*) from your-table-name;` to confirm you have data
1. run `\q` to exit database

Your data is loaded!
Try running the code you find in the python file here


## Resources
- https://sherryhsu.medium.com/how-to-import-csv-into-docker-postgresql-database-22d56e2a1117