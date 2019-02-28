FLYWAY_MIGRATE= flyway:migrate
FLYWAY_CLEAN= flyway:clean
FLYWAY_DB_USER= -Dflyway.user=postgres
FLYWAY_DB_PASSWORD= -Dflyway.password=postgres
FLYWAY_DB_URL=-Dflyway.url=jdbc:postgresql://localhost:5432/sampledb
RUN = spring-boot:run

flyway-clean:
	mvn $(FLYWAY_CLEAN) $(FLYWAY_DB_URL) $(FLYWAY_DB_USER) $(FLYWAY_DB_PASSWORD)

flyway-migrate:
	mvn $(FLYWAY_MIGRATE) $(FLYWAY_DB_URL) $(FLYWAY_DB_USER) $(FLYWAY_DB_PASSWORD)

flyway-reset:
	flyway-clean flyway-migrate

