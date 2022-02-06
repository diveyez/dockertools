# Intalls the Portainer Agent Container

docker run -d -p 9001:9001 --name portainer_agent --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v /var/lib/docker/volumes:/var/lib/docker/volumes cr.portainer.io/portainer/agen:tlatest
