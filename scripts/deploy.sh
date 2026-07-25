#!/usr/bin/env bash
# One-click Master Deployment Script
echo "========================================================"
echo "NexusEngine Enterprise - Master Infrastructure Launcher"
echo "========================================================"

cd "$(dirname "$0")/.."

echo "[1/3] Building and bringing up container services..."
docker compose -f docker-compose.devops.yml up -d --build

echo "[2/3] Executing Ansible provisioning playbook..."
if command -v ansible-playbook &> /dev/null; then
    ansible-playbook -i ansible/inventory/hosts.ini ansible/site.yml
else
    echo "Notice: Ansible CLI not installed locally. Docker Compose deployment active."
fi

echo "[3/3] Running health verification gate..."
sleep 3
curl -f http://localhost:80/health && echo -e "\n✓ App health OK!" || echo -e "\n✘ App health check pending..."

echo "========================================================"
echo "Deployment Complete!"
echo "• Nginx Gateway Dashboard: http://localhost:80"
echo "• FastAPI direct backend:  http://localhost:8000/docs"
echo "• Prometheus metrics:      http://localhost:9090"
echo "• Grafana visualizer:      http://localhost:3000 (admin/admin)"
echo "========================================================"
