# alicloud-terraform

## Terraform template to create VPC on Alibaba Cloud

This repository contains

- provider.tf
- vpc.tf
- sg.tf
- mysql.tf
- ecs.tf
- var.tf.example

## How to use it

Copy file var.tf.example to new file name var.tf, then enter the information to var.tf file.

### Init terraform

You need to install terraform on your computer, then run init command to initialize terraform from current folder.

```
terrafrom init
```

### Check provision plan of configs from .tf files using terraform command

```
terraform plan
```

### Apply of configs from .tf files using terraform command

```
terraform apply
```
