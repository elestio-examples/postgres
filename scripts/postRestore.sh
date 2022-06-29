#Restart the stack after files are restored
docker-compose up -d;
sleep 5s;

#restore from last dump
gunzip < ./lastDump.sql.gz | docker-compose exec -T postgres psql -U postgres

##set the postgres password (usefull when migrating from another server)
docker exec -i postgres psql -U postgres -c "ALTER ROLE postgres WITH PASSWORD '$SOFTWARE_PASSWORD';"