# NDI Discovery Service Docker
This repository aims to make it easier to start, stop, and update the NDI Discovery Service via Docker.

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
      docker compose logs
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
```bash
docker compose down
```

## Configurating Environment Variables
- `NDI_BIND` (default: `0.0.0.0`) - Sets the IP address / interface to which the NDI Discovery Server binds.
- `NDI_PORT` (default: `5959`) - Specifies the port for the NDI Discovery Service.
