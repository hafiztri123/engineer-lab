#!/bin/bash
set -e

echo "🚀 Stopping Platform Lab..."

echo "📊 Stopping monitoring stack..."
docker compose -f monitoring/docker-compose.monitoring.yml down 

sleep 10

echo "🎨 Stopping UI layer..."
docker compose -f ui/docker-compose.ui.yml down 

sleep 10

echo "📦 Starting Kafka cluster..."
docker compose -f kafka/docker-compose.kafka.yml down 





