# Portainer Install/Setup Scipt
docker volume create portainer_data
docker run -d -p 9442:9442 -p 9443:9443 --name portainer \
    --restart=always \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v portainer_data:/data \
    cr.portainer.io/portainer/portainer-ce:latest
