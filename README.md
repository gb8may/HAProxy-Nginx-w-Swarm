# HAProxy and Nginx with Docker Swarm

*Environment with HAProxy and Nginx with Docker Swarm*

### How to provision and manage the environmet
```
# ./build-and-deploy.sh
```
> *This script will create HAProxy and NGinx containers and the Stack called challenge.*

```
# ./auto-scaling.sh
```
> *With this script you can change the number of replicas needed for your environment, according to demand.*

### Other files
```
# docker-stack.yaml
```
> *On this YAML you have information of your containers. In this case I created a volume to insert haproxy.cfg on HAProxy container and another volume for index.html on NGinx.*
```
# Dockerfile
```
> *This Dockerfile creates a HAProxy v1.8 container.*

<p align="center">
  <img src="https://cdn.haproxy.com/wp-content/uploads/2019/10/HAProxyDockerSwarm.png">
</p>
