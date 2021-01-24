<h2 align="center">DevOps Challenge</h2>

<div align="center">

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](/LICENSE)
ac
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
Kubernetes cluster (optional)
Python 3
Terraform 0.14.0+
```

### Modules

These steps are essential, but not immutable. You can customize some of them or just replace them, but you need to run them all to get the same result.

#### Step 1 - Application itself
\
#### Step 2 - CI pipeline
\
#### Step 3 - Cluster infrastructure
\
#### Step 4 - CD pipeline
\
#### Step 5 - Application IaC
\



## 🎈 Usage <a name="usage"></a>



### Routes

```
/:integer - Checks if the number is odd or not
- output

/list/:list - Checks a list of numbers
- output
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
