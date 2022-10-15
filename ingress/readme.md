how to use ingress
https://www.digitalocean.com/community/tutorials/how-to-set-up-an-nginx-ingress-on-digitalocean-kubernetes-using-helm

- install load balancer with helm
- get LB IP address
- point domain address to LB IP
- create ingress.yaml without TLS part
- apply in kubernetes

TLS
- Install and configure cert manager. It used for connection to Certificate Authorization (CA)
        kubectl apply -f https://github.com/jetstack/cert-manager/releases/download/v1.7.1/cert-manager.yaml
- run stagingIssuer.yaml/productionIssuer.yaml
- modify ingress with tls part