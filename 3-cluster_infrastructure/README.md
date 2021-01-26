<h2 align="center">Cluster Infrastructure</h2>

<div align="center">

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](/LICENSE)

</div>

---

<p align="center"> This is the infrastructure provisioning steps. Feel free to change configurations os skip some parts.
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

The role `aws_essentials` is responsible for create base AWS resources using Terraform.

Here are the AWS resources that I’m about to launch using Terraform:

*    AWS VPC and related network infrastructure (Subnets, NAT Gateways, IGW, etc)
*    Security group for the API server.
*    S3 bucket for the kops state.

The tags on AWS resources are important, do not remove it!

The role `create_cluster` is used to apply some Kops commands and generate the TF files with the cluster resources' configuration.
It makes sure to save the kops state on bucket and the Terraform state too.

## 🏁 Getting started <a name = "getting_started"></a>

For this step, you will need:

### Prerequisites

```
Ansible 2.10.4+
AWS credentials
Kops
Kubernetes cluster (optional)
Python 3
Terraform 0.14.0+
```

## 🎈 Usage <a name="usage"></a>

On this folder, you need to write on `tf/variables.tf` the infrastructure configuration if you want to change the basic resources.

The file `group_vars/all.yaml` you set the TF bucket information for state saving.

The file `roles/create_cluster/templates/values.example` is the reference about the TF output. These informations are useful to generate the `cluster_files/cluster.yaml` and TF files. After this, the playbook will apply all templates and launch the cluster.

## ⛏️ Tools <a name = "built_using"></a>

- [Ansible](https://www.ansible.com/) - Open-source IT tool to manage, automate, configure servers, and deploy applications
- [AWS](https://aws.amazon.com/) - Cloud service
- [Helm](https://helm.sh/) - Kubernetes Package Manager
- [Kops](https://kops.sigs.k8s.io/) - Tool to manage kubernetes cluster
- [Terraform](https://www.terraform.io/) - Open-source infrastructure as code software tool that enables you to safely and predictably create, change, and improve infrastructure.

## ✍️ Authors <a name = "authors"></a>

- [@bih-goncalves](https://github.com/bih-goncalves)

## 🎉 Acknowledgement <a name = "acknowledgement"></a>

- This project is a challenge for DevOps role in [@HearstTelevision](https://www.hearst.com/broadcasting)
