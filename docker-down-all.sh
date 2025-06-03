#!/bin/bash
echo "Stopping and removing all Docker containers, networks, volumes, and images..."
docker compose \
  -f nginx/docker-compose.yml \
  -f ghost/docker-compose.yml \
  -f n8n/docker-compose.yml \
  --env-file .env \
  down -v --remove-orphans

docker system prune -a --volumes -f
