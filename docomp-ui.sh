# Starts a UI for working with Docker compose files
docker run \
--name docker-compose-ui \
-p 5000:5000 \
-w /opt/docker-compose-projects/ \
-v /var/run/docker.sock:/var/run/docker.sock \
francescou/docker-compose-ui:1.10.0
