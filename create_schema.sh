#!/usr/bin/env bash

if [ "${POSTGRES_SCHEMA}" ]; then
    schemaRequest=""
    schemaRequest="CREATE SCHEMA ${POSTGRES_SCHEMA}"
    user=postgres
    if [ "${POSTGRES_USER}" ]; then
        user=${POSTGRES_USER}
        schemaRequest="${schemaRequest} AUTHORIZATION ${user}"
    fi
    schemaSetRequest="ALTER ROLE ${user} SET search_path TO ${POSTGRES_SCHEMA},public"

	"${psql[@]}" --username ${user} <<-EOSQL
			${schemaRequest} ;
			${schemaSetRequest} ;
	EOSQL
    echo
fi
