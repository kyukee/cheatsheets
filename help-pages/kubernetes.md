# lists all instances of deployments, pods, services or other resources
kubectl get <type-name>

# gives a short summary of the specified item
kubectl get <type-name> <identifier>

# describes detailed information about all items of that type
kubectl describe <type-name>

# describes detailed information about a specific item
kubectl describe <type-name> <identifier>

# general command for creating items. required arguments depend on item type
kubectl create <type-name> <identifier>
  [--image=<image>]                            to create a deployment, you need an image
  [-f <yaml-file>]                             you can also create a deployment from a yaml file

# same as 'create', but used to modify already existing items
kubectl apply <type-name> <identifier>

# exposes a port for a given deployment, pod, or other resource
kubectl expose <type-name> <identifier>
  [--port=external port]
  [--target-port=container port]
  [--type=service type]

# forward one or more local ports to a pod
kubectl port-forward <pod> <remote-port>

# the local port argument is optional
[<local-port>:<remote-port>]

# attaches to a running container to view the output stream or interact with it
kubectl attach <pod-name>
  [-c <container>]                             specify a container inside the pod, when the pod has multiple containers

# execute a command in a container (use 'bash' as a command to open a shell)
kubectl exec <pod-name> <command>
  [-it]                                        open an interactive tty in the container (same as docker)
  [-c <container>]                             specify a container inside the pod

# for more detailed info:
https://kubernetes.io/docs/reference/kubectl/overview/
https://kubernetes.io/docs/reference/kubectl/cheatsheet/
