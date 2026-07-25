#!/usr/bin/env bash
# Script to run lightweight Jenkins server locally inside Docker container
echo "Initializing Jenkins Automation Server container..."

docker run -d \
  --name nexus-jenkins \
  -p 8080:8080 \
  -p 50000:50000 \
  -v jenkins_home:/var/jenkins_home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  jenkins/jenkins:lts-jdk17

echo "Jenkins server running on http://localhost:8080"
echo "To fetch initial admin password, run: docker exec nexus-jenkins cat /var/jenkins_home/secrets/initialAdminPassword"
