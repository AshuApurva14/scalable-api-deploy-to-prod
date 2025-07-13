# Scalable API deployment with Nginx

[![CI setup for Nodejs API app](https://github.com/AshuApurva14/scalable-api-deploy-to-prod/actions/workflows/ci-cd.yml/badge.svg?branch=main&event=push)](https://github.com/AshuApurva14/scalable-api-deploy-to-prod/actions/workflows/ci-cd.yml?branch=main)

A sample Node.js API project running behind an NGINX reverse proxy using Docker Compose.

## Project Structure

```
.
├── compose.yml
├── Dockerfile
├── node-api-project/
│   └── nginx/
│       ├── Dockerfile
│       └── nginx.conf
├── src/
│   ├── server.js
│   └── server.test.js
├── scripts/
│   ├── app_start.sh
│   ├── app_stop.sh
│   └── service_healthcheck.sh
├── package.json
└── ...
```

## Features

- Node.js Express API with health check endpoint
- NGINX as a reverse proxy
- Dockerized setup for both API and NGINX
- Health checks for both services
- Jest for testing
- ESLint for linting

## Security and DevOps Best Practices

This project follows several security and DevOps best practices:

- **Container Image Scanning:**  
  All Docker images are scanned for vulnerabilities using [Trivy](https://github.com/aquasecurity/trivy). The scan results are uploaded to the GitHub Security tab for visibility and tracking.

- **OIDC Identity Provider for AWS:**  
  The project uses GitHub Actions with OIDC (OpenID Connect) to securely access AWS resources without long-lived credentials, following modern cloud security practices.

- **Static Code Analysis:**  
  Source code is analyzed using [SonarQube](https://www.sonarqube.org/) to detect bugs, vulnerabilities, and code smells. Reports are automatically uploaded to the SonarQube dashboard for review and continuous improvement.

These practices help ensure the codebase is secure, maintainable, and compliant with industry standars.

## Endpoints

- `GET /api/v1` — Returns status of the Node server
- `GET /api/v1/health` — Returns API health status

## Prerequisites

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/)
- [Node.js](https://nodejs.org/) (for running tests and linting locally)

## Running the Project

1. **Clone the repository:**
   ```sh
   git clone <repo-url>
   cd deploy-api-nginx-prod
   ```

2. **Build and start the services:**
   ```sh
   docker compose up --build
   ```

3. **Access the API:**
   - Open [http://localhost:8081/api/v1](http://localhost:8081/api/v1) in your browser.
   - Health check: [http://localhost:8081/api/v1/health](http://localhost:8081/api/v1/health)

4. **Run tests (locally):**
   ```sh
   npm install
   npm test
   ```

5. **Lint the code (locally):**
   ```sh
   npm run lint
   ```

## Stopping the Project

```sh
docker compose down
```

## License

MIT

