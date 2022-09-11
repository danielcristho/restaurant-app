#!/usr/bin/env bash

cd restaurant-backend
docker-compose up -d --build

cd ../restaurant-frontend
docker-compose up -d --build