# docker-postgres

Custom docker image (based on Alpine) from official Postgres repository  (https://hub.docker.com/_/postgres/). 
 
The Dockerfile add just a custom script executed by the default entry-point.sh. 

You can use this image exactly like the officiel postgres docker image. It takes the same parameter + a custom parameter `POSTGRES_SCHEMA` to create a custom schema.

## Tested

This repose has been tested only on actual Alpine version (9.6-alpine). 
Feel free to change version of postgres images, at your own risk. :)

## Exemple

```
docker run --name ccc -d 
    -p 5432:5432 \
    -e POSTGRES_PASSWORD=admin \ 
    -e POSTGRES_DB=my_database \
    -e POSTGRES_SCHEMA=not_public_schema
```