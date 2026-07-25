# Contributing to NexusEngine DevOps Pipeline

Thank you for contributing to the **NexusEngine DevOps Pipeline**!

## 🚀 Guidelines

1. **Fork & Clone**:
   ```bash
   git clone https://github.com/YOUR-USERNAME/nexus-engine-devops.git
   cd nexus-engine-devops
   ```

2. **Validation Tools**:
   - Check Ansible Playbooks: `ansible-playbook --syntax-check ansible/site.yml`
   - Validate Docker Compose: `docker compose -f docker-compose.devops.yml config`
   - Check Shell Scripts: `bash -n scripts/deploy.sh`

3. **Pull Request Process**:
   - Create a branch (`git checkout -b devops/feature-name`).
   - Test locally with `./scripts/deploy.sh`.
   - Submit a PR with clear description.
