# Pipeline manager

## What is Drone?

https://drone.io

OSS CI/CD tool. Enterprise version costs, free OSS version is available too.

It’s easy to connect with Github/Github Enterprise/Bitbucket. Once you finish initial settings, just include .drone.yml in your repository like Travis. Drone understands your commands on that yaml file such that you just push codes then automatically start build things.

## Deploy drone CI

First, you need to register OAuth apps on Github/Bitbucket

In order to authorise Drone, Client ID and Client Secret are needed. Follow this page, or here in case of Github.

https://docs.drone.io/server/provider/github/
https://docs.drone.io/server/provider/bitbucket-cloud/

With your key and secret, we will be deploying the official helm chart for drone.

```
helm repo add drone https://charts.drone.io
helm repo update
```

To use the drone with minimum configuration and free access, we provided some configuration files.

You need to replace the `ingress host` and `DRONE_SERVER_HOST` env in the file `server.values.yaml`. Write some key for `DRONE_RPC_SECRET` and replace on both `server.values.yaml` and `runner.values.yaml` files. The final change is to put your key and secret from Github or Bitbucket. Please pay attention to use the right envs and set just one integration.

Now, you apply both changes and wait until everything is ready.

```
helm install --namespace drone --create-namespace -f values.dev.yaml drone-dev drone/drone
helm install --namespace drone -f runner.values.yaml drone-runner-kube drone/drone-runner-kube
```

So, we decided to expose the drone UI with a load balancer to be accessible. This makes us need to go to Route 53 or other DNS server and create the record manually. You just need to get the load balancer name and associate as a simple A record.

```
kubectl get service
```

With this, everything is ready for pipeline creation. Now you need to follow some configuration that you like and associate it to drone from UI.

To help you, we have some examples here: https://docs.drone.io/pipeline/docker/examples/

You can make tests and upload your application image to dockerhub or ECR, just remember to not commit credentials, use Drone variables.

Happy Coding!
