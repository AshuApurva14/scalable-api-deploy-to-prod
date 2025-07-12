## Removing all resources

To remove all resources associated with your Docker Compose project, including volumes and images, use the following options with the docker compose down command:

**docker compose down -v**: This command stops and removes containers, networks, and also removes named volumes declared in the volumes section of the docker-compose.yml file and anonymous volumes attached to containers.

**docker compose down --rmi all**: This command removes all images used by any service in your Docker Compose file.

**docker compose down --remove-orphans**: This removes containers that were created by Docker Compose but are no longer defined in your current docker-compose.yml file. 