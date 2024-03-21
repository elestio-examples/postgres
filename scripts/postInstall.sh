set -o allexport; source .env; set +o allexport;

docker-compose down
openssl req -new -x509 -days 3650 -nodes -text -out ./data/server.crt -keyout ./data/server.key -subj "/CN=${CNAME}"
sleep 5s;
sed -i 's/#command:/command:/' docker-compose.yml
docker-compose up -d;
