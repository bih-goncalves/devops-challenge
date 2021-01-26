<h2 align="center">DevOps Challenge</h2>

<div align="center">

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](/LICENSE)

</div>

---

<p align="center"> This repository presents the infrastructure configuration for a simple API deployed with kubernetes.
    <br>
</p>

## 📝 Content

- [About](#about)
- [Getting started](#getting_started)
- [Usage](#usage)
- [Tools](#built_using)
- [Authors](#authors)
- [Acknowledgement](#acknowledgement)
---

## About <a name = "about"></a>

The application is a rest API that evaluates whether a number is odd or not.
Built with NodeJS and hosted on a Kops cluster (kubernetes). Using IaC patterns, the infrastructure was written with a mix of tools to launch better and be maintainable.

![alt text](/images/cluster.png?raw=true)

## 🏁 Getting started <a name = "getting_started"></a>

Some of the steps can be different. The whole project was divided into modules to suit your preferences.

### Prerequisites

```
Ansible 2.10.4+
AWS credentials
Helm v3.4.0+
Kops
Kubernetes cluster (optional)
Python 3
Terraform 0.14.0+
```

### Modules

These steps are essential, but not immutable. You can customize some of them or just replace them, but you need to run them all to get the same result.

#### Step 1 - Application itself

This is a copy from https://github.com/bih-goncalves/is-odd repo.
The original repo was created to link with CI pipeline and trigger it.

#### Step 2 - Cluster infrastructure

In this step we create all infrastructure. If you already have the VPC, subnets configuration or the cluster itself, you can skip some steps.

#### Step 3 - CI pipeline

This is the step where we create Drone CI server and start the CI pipeline configurations. We are using the official helm chart and changing some configurations.

The CI itself is not provided yet, it's the next step for this challenge.

#### Step 4 - CD pipeline

WIP

#### Step 5 - Application IaC

Here we provide the application helm charts to be applied by CD pipeline with Drone.


## 🎈 Usage <a name="usage"></a>

You can make a GET request for any of the following routes and get a simple JSON message.

When you check the number, the response is a JSON with the result as true or false.

### Routes

```
/ - root path, just says that you should try a number

/:integer - Checks if the number is odd or not
- output
{ result: true }

/health - health check for k8s
- output
{ message: 'I am fine'}
```

## ⛏️ Tools <a name = "built_using"></a>

- [Ansible](https://www.ansible.com/) - Open-source IT tool to manage, automate, configure servers, and deploy applications
- [AWS](https://aws.amazon.com/) - Cloud service
- [Eslint](https://eslint.org/) - Linter
- [Express](https://expressjs.com/) - Server Framework
- [Helm](https://helm.sh/) - Kubernetes Package Manager
- [Kops](https://kops.sigs.k8s.io/) - Tool to manage kubernetes cluster
- [NodeJs](https://nodejs.org/en/) - Server Environment
- [Nodemon](https://nodemon.io/) - Changes Monitor
- [Prettier](https://prettier.io/) - Code Formatter
- [Terraform](https://www.terraform.io/) - Open-source infrastructure as code software tool that enables you to safely and predictably create, change, and improve infrastructure.

## ✍️ Authors <a name = "authors"></a>

- [@bih-goncalves](https://github.com/bih-goncalves)

## 🎉 Acknowledgement <a name = "acknowledgement"></a>

- This project is a challenge for DevOps role in [@HearstTelevision](https://www.hearst.com/broadcasting)
