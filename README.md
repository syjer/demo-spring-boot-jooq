# spring boot + liquibase (sql migration) + jooq + mariadb

At the moment, generate the model manually, as the generation logic is hidden by a maven profile:

First launch the db: 
>docker run --rm  -p 3306:3306 -e MARIADB_ROOT_PASSWORD=password -e MARIADB_DATABASE=test -e MARIADB_USER=test -e MARIADB_PASSWORD=test mariadb:10.6.4 --sql-mode="IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION"

Then:
>./mvnw -Pgenerate-jooq  generate-sources

This will run the migration with liquibase and then jooq generation.

notes:
 - https://github.com/testcontainers/testcontainers-java/issues/4397
 - https://blog.jooq.org/using-testcontainers-to-generate-jooq-code/