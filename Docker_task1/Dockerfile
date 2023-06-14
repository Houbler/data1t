FROM postgres:latest
ENV POSTGRES_PASSWORD=secret
ENV POSTGRES_USER=username
ENV POSTGRES_DB=database
COPY initpack/init.sql /docker-entrypoint-initdb.d/init.sql
VOLUME [/var/lib/docker/volumes/testvolume/_data]