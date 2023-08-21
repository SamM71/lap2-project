# Lap 2 Project

This repo is used for development.

## Using the database in a docker container
1. `cd database`
2. `npm install`
3. Create .env file in database folder
    ```
    DB_URL=postgres://user_name:password@localhost:5432/db_name
    POSTGRES_DB=db_name
    POSTGRES_USER=user_name
    POSTGRES_PASSWORD=password
    ```
4. `docker compose up`
5. `node setup.js`