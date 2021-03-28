# docker run - flags
docker run <image>
    --name <name>                     run container with a certain name
    -it                               essentialy ssh into the container
    -d                                detatched mode (runs in background)
    -p <host_port>:<contnr_port>      redirect ports (expose ports)
    -v <host_path>:<contnr_path>      mount a volume (shared folders) (needs to be full path)
    -v ${PWD}:<contnr_path>           can be used in -v to indicate current directory

# docker inspect - use grep to filter the information
docker inspect <item> | grep IPAddress

# docker exec - attach to running process
docker -it exec <container> <process>
