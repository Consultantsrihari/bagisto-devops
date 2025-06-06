#!/bin/bash

echo "Running migrations..."
docker-compose exec app php artisan migrate --force

echo "Seeding database..."
docker-compose exec app php artisan db:seed
