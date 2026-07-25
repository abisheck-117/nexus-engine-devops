#!/usr/bin/env bash
echo "NexusEngine Infrastructure Status Check:"
echo "----------------------------------------"
docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"
