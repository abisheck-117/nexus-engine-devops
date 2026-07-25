# Security Policy

## Supported Versions

| Version | Supported          |
| ------- | ------------------ |
| 1.0.x   | :white_check_mark: |
| < 1.0   | :x:                |

## Infrastructure Security Best Practices

- Never commit production passwords or API tokens into Git.
- Use environment variables (`.env`) for secrets management.
- Ensure Nginx SSL/TLS parameters are enabled in production environments.
