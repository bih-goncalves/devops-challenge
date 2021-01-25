# Microservice Helm Chart

## Usage

Generate k8s manifest:

```
helm dep up
helm template release --values values.yaml ./ --debug
```

## Config

The settings must be passed to the Chart through the `Values.yaml` files. The default is as follows:

- `values.yaml`: Contains settings common across environments
- `values.qa.yaml`: Override or add values ​​to the QA environment
- `values.prod.yaml`: Override or add values ​​to the PROD environment

### Example Values.yaml

```yml
# values.yaml
global:
  app_name: example
  image:
    tag: latest

# values.qa.yaml
global:
  app_stage: qa

container:
  apis: []
  workers: []
  cronjobs: []
```

### APIs

```yml
# Example values.qa.yaml
app_name: is-odd

replicaCount: 2

image:
  repository: byby267/isodd
  pullPolicy: IfNotPresent
  # Overrides the image tag whose default is the chart appVersion.
  tag: "latest"

container:
  containerPort: 3000
  healthCheck: /health
  livenessProbe: 15
  readinessProbe: 15

resources:
  limits_cpu: 100m
  limits_memory: 128Mi
  requests_cpu: 100m
  requests_memory: 128Mi

# you can use HPA operator here
podAnnotations: {}

service:
  type: NodePort
  port: 80
  targetPort: 3000
```

### Workers

WIP

### Cronjobs

WIP
