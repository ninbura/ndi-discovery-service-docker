# NDI Discovery Server Docker Setup
This setup lets you easily start, stop, and update the NDI Discovery Service via Docker.

## Starting the Service
1. Clone this repository and enter the directory
    - ```bash
      git clone https://github.com/yourusername/ndi-discovery-server-docker.git
      ```
    - ```bash
      cd ndi-discovery-server-docker
      ```
2. Start the container using Docker Compose
    - ```bash
      docker compose up -d
      ```
3. Check the logs to verify proper output
    - ```bash
      docker compose logs -f
      ```

## Updating
1. Pull the latest image
    - ```bash
      docker compose pull
      ```
2. Restart the container
    - ```bash
      docker compose up -d
      ```

## Stopping the Service
To stop the service, run the following command.
```bash
docker compose down
```

## Configurating Environment Variables
- `NDI_BIND` (default: `0.0.0.0`) - Sets the IP address to which the NDI Discovery Server binds. You only need to change NDI_BIND_IP if you are running the container in host network mode.
- `NDI_PORT` (default: `5959`) - Specifies the port for the NDI Discovery Service. Adjusting this allows you to run the service on a different port if needed. Make sure you also adjust the port mapping in the `docker-compose.yml` file. The left hand port should match `NDI_PORT`, the right hand side port is what's exposed on your host.
