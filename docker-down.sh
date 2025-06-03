#!/bin/bash
docker compose \
  -f nginx/docker-compose.yml \
  -f ghost/docker-compose.yml \
  -f n8n/docker-compose.yml \
  --env-file .env \
  down
