up:
	docker-compose up
down:
	docker-compose down -v
docker-prune:
	docker system prune
exec:
	docker exec -it postgres14 psql -U root
schema_init:
	migrate create -ext sql -dir db/migration -seq init_schema
migrateup:
	migrate -path db/migration -database "postgresql://root:postgres@localhost:5432/postgres?sslmode=disable" --verbose up
migratedown:
	migrate -path db/migration -database "postgresql://root:postgres@localhost:5432/postgres?sslmode=disable" --verbose down