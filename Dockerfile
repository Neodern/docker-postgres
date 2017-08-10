FROM postgres:alpine

COPY create_schema.sh /docker-entrypoint-initdb.d/