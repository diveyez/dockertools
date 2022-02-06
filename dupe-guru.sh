docker run -d \
    --name=dupeguru \
    -p 5800:5800 \
    -v /docker/appdata/dupeguru:/config:rw \
    -v $HOME:/storage:rw \
    jlesage/dupeguru