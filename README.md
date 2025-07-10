# Scalable API deployment with Nginx

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