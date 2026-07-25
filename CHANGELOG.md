# Changelog

All notable infrastructure changes to **NexusEngine DevOps Pipeline** will be documented in this file.

## [1.0.0] - Prepared Release

### Added
- **Declarative Jenkins Pipeline**: Multi-stage `Jenkinsfile` for automated checkout, testing, container builds, Ansible deployment, and health verification targeting `nexus-engine-backend`.
- **Ansible Infrastructure Automation**: Idempotent roles (`docker`, `nexus_app`, `nginx`) for automated host provisioning.
- **Nginx API Gateway**: Production reverse proxy handling WebSocket upgrades and SSE `proxy_buffering off`.
- **Prometheus & Grafana Observability**: Telemetry scraping targeting FastAPI `/metrics` and pre-configured Grafana dashboards.
- **Master Stack Orchestration**: `docker-compose.devops.yml` and `scripts/deploy.sh` for one-click local stack deployment.
