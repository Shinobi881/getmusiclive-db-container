FROM postgres:9.6
EXPOSE 5432

COPY deletetables.sql /docker-entrypoint-initdb.d
COPY getmusiclive.sql /docker-entrypoint-initdb.d
VOLUME /var/lib/postgresql/data
