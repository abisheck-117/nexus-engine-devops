# NexusEngine Enterprise - DevOps & Operations (Repository 2)

Infrastructure as Code (IaC), CI/CD Automation, Nginx API Gateway, and Telemetry Monitoring stack for **NexusEngine Enterprise**.

---

## 🛠️ DevOps Stack Overview

| Tool | Role & Functionality |
| :--- | :--- |
| **Jenkins** | Declarative multi-stage CI/CD pipeline (`jenkins/Jenkinsfile`) executing checkout, linting, pytest, container build, and Ansible deployment. |
| **Docker & Compose** | Multi-stage container builds & master container orchestration stack (`docker-compose.devops.yml`). |
| **Ansible** | Automated infrastructure playbooks (`ansible/site.yml`) provisioning Nginx proxies, containers, and server settings. |
| **Nginx** | Production reverse proxy gateway handling WebSocket HTTP/1.1 upgrading and SSE `proxy_buffering off`. |
| **Prometheus** | Automated telemetry scraper (`monitoring/prometheus/prometheus.yml`) pulling FastAPI `/metrics`. |
| **Grafana** | Visual dashboard visualizer (`monitoring/grafana/dashboards/nexus-overview.json`) displaying real-time HTTP RPS, latencies, and WebSocket counts. |

---

## 🚀 Deployment Instructions

### One-Click Launch
```bash
cd D:\FastApi\nexus-engine-devops
./scripts/deploy.sh
```

Or via Docker Compose directly:
```bash
docker compose -f docker-compose.devops.yml up -d --build
```

---

## 🔗 Endpoints Summary

- **Nginx API Gateway**: `http://localhost:80`
- **FastAPI Direct Backend**: `http://localhost:8000/docs`
- **Jenkins CI/CD Server**: `http://localhost:8080` (Optional local container)
- **Prometheus Dashboard**: `http://localhost:9090`
- **Grafana Dashboard**: `http://localhost:3000` (User: `admin` / Password: `admin`)
