#save latest dump to disk
docker-compose exec -T postgres pg_dumpall -c -U postgres | gzip > ./lastDump.sql.gz