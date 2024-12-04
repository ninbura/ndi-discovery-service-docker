```bash
docker login
```
```bash
docker build --no-cache -t ninbura/ndi-discovery-service .
```
```bash
docker push ninbura/ndi-discovery-service
```
```bash
docker compose pull ndi-discovery-service
```