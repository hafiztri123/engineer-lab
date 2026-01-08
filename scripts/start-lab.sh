#!/bin/bash
set -e

echo "🚀 Starting Platform Lab..."

# Start Kafka first
echo "📦 Starting Kafka cluster..."
docker compose -f kafka/docker-compose.kafka.yml up -d

# Wait for Kafka
echo "⏳ Waiting for Kafka brokers..."
sleep 10

# Start UI layer
echo "🎨 Starting UI layer..."
docker compose -f ui/docker-compose.ui.yml up -d

# Start monitoring
echo "📊 Starting monitoring stack..."
docker compose -f monitoring/docker-compose.monitoring.yml up -d

echo ""
echo "✅ Platform Lab is ready!"
echo ""
echo "📍 Access Points:"
echo "  Kafka Brokers: localhost:19092, 19093, 19094"
echo "  Kafka UI:      http://localhost:8080"
echo "  Grafana:       http://localhost:3000 (admin/admin)"
echo "  Prometheus:    http://localhost:9090"
echo "  Schema Reg:    http://localhost:8081"
echo ""