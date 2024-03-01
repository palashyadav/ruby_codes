# Devops Laboratory

Small demo Dockerized Flask app used to exercise basic devops workflows: build image, run container, healthchecks, and small CI.

Quick start:

1. Build image: `make build`
2. Run locally: `make run` (or `docker-compose up --build`)
3. Health: `curl http://localhost:5000/health`
