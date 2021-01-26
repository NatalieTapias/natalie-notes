# Kubernetes
## What is it?
It's an open-source system for automating deployment, scaling, and management of containerized applications. It allows for managing resources and scaling as configured.
## Key features
* Automated rollouts and rollbacks. 
* Serivce Topology: routes service traffic based on cluster topology.
* Batch execution: it is possible to batch and manage CI workloads
* Horizontal scaling
* Service discovery and load balancing: kubernetes gives pods their own IP addresses and a single DNS name for a set of Pods & load-balances across them.
* Storage orchestration
* Automatic bin packing: automatically places containers based on their resource requirements
* self-healing: restarts containers that fail, replaces/reschedules containers when nodes die, kills containers that don't respond to user-defined health check, and doesn't advertise them to clients until they are ready to serve.

You can scale, "never outgrow", and run anywhere with kubernetes. 

### A Few Fun Commands to know 
The kubernetes command-line tool allows you to run commands against Kubernetes clusters. 
- Install and Set up `kubectl` using Homebrew: `brew install kubectl`  
- Use kubectl to deploy applications, inspect and manage cluster resources, and view logs.
- For a full list of kubectl operations see: [overview of kubectl](https://kubernetes.io/docs/reference/kubectl/overview/)

--------
- Log in using OIDC authentication using the Nordstrom tool `kubelogin` [github repo here](https://github.com/Nordstrom/kubelogin)

- example usage: config alias, then `kubelogin login <alias>`
- kubectl get pods 
- kubectl describe pod <pod name>
- kubectl logs -f <pod name>
- seeing what happened in the past: kubectl logs <pod name> --previous
- switching contexts: kubectl config get-contexts ; example: kubectl config use-context <context>
