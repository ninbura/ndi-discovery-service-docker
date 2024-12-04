# docker image stuff
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

# open port on Windows firewall for use with WSL
```PowerShell
New-NetFirewallRule -DisplayName "NDI Discovery Service" -Direction Inbound -Protocol TCP -LocalPort 5959 -Action Allow
```