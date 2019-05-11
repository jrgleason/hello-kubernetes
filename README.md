# My Kubernetes Demo

## Commands

* Docker
    * Build Docker image `docker build -t jrg/hello-k8s .`
    * Optional: Create Registry
        * Start registry `docker run -d -p 5000:5000 --restart=always --name registry registry:2`
        * Add to registry `docker tag jrg/hello-k8s localhost:5000/jrg/hello-k8s`
        * Push to registry `docker push localhost:5000/jrg/hello-k8s`
    * Run Docker Directly`nohup docker run -p 4000:8080 localhost:5000/jrg/hello-k8s &`
* Kubernetes
    * Build K8s from Docker `kubectl create deployment hello-k8s --image=192.168.99.1:5000/jrg/hello-k8s`
    * Allow Traffic `kubectl expose deployment hello-k8s --type=LoadBalancer --port=8080`

## Result

This service provides a basic tcp endpoint at localhost that says hello world. More documentation to come.   