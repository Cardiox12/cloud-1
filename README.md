# Cloud-1

## Introduction

Ce projet est une introduction au cloud. En réalité, il s'agit surtout d'une introduction à Ansible plutôt qu'au cloud. Nous avons décidé d'approfondir cette idée en nous rapprochant au plus près des conditions réelles de déploiement d'une stack applicative sur un fournisseur de cloud. Ce sujet sera donc notre objectif principal et le fil conducteur de notre travail. L'automatisation sera réalisée de A à Z, en incluant notamment le provisionnement du fournisseur cloud et de l'infrastructure créée et les outils utilisés seront Terraform et Ansible.

Afin de coller au mieux à la philosophie **Devops** et dans un soucis d'économie (le déploiement d'instances étant onéreux), deux environnements seront crées, un environnement de *développement* (local) et un environnement de *production*, le but étant d'avoir un environnement de développement se **rapprochant** au maximum de l'environnement de production.

La stack applicative déployée sera une stack PERN (Postgres, Express, React, Nginx).

Afin de tirer un maximum de connaissances du sujet, nous avons réfléchi à trois évolutions :

1. 1 Processus = 1 Instance
2. 1 Processus = 1 Container
3. 1 Processus = 1 Pod

### Évolution 1

Dans cette première évolution, chaque processus aura son instance dédiée, les notions clés seront :
1. Gestion d'un VPC
2. Gestion des communications entre les instances
3. Sécurisation des communications

### Évolution 2

Dans cette deuxième évolution, chaque processus aura son container dédié, tout se déroulera sur une seule instance (EC2) et les notions clé seront : 
1. Sécurisation de l'exposition de l'instance (règles firewall, fail2ban)
2. Gestion des réseaux avec Docker.

### Évolution 3

Dans cette troisième évolution, chaque processus aura son pod dédié, deux instances seront déployées, une instance pour le control plane et une instance pour cluster kubernetes. (Il est possible qu'une solution managée soit également utilisée?)
Les notions clés seront :
1. Gestion du load balancing
2. Scaling en fonction de la charge
3. Sécurisation d'un cluster k8s
4. Communication entre les pods
5. Exposition des services en dehors du cluster

## Conclusion

Ce projet est une introduction au cloud et à Ansible, avec pour objectif de se rapprocher au plus près des conditions réelles de déploiement d'une stack applicative sur un cloud provider. Trois évolutions sont envisagées, chacune avec des concepts clés différents, allant de l'utilisation d'instances dédiées à l'utilisation de pods dans un cluster Kubernetes.

---

## Introduction

This project is an introduction to the cloud.
In reality, this project is more of an introduction to Ansible than to the cloud, as we have decided to go further.
The idea is to get as close as possible to the real deployment conditions of an application stack on a cloud provider, and this topic will serve as an objective and a common thread.
The automation will be done from A to Z, including the provisioning of the cloud provider and the provisioning of the created infrastructure, using Terraform and Ansible.

To best adhere to the **DevOps** philosophy and in the interest of cost savings (since deploying instances can be expensive), two environments will be created: a *development* (local) environment and a *production* environment, with the goal of having a development environment that **closely resembles** the production environment.

The deployed application stack will be a PERN stack (Postgres, Express, React, Nginx).

To gain as much knowledge as possible on the subject, we have considered three evolutions:

1. 1 Process = 1 Instance
2. 1 Process = 1 Container
3. 1 Process = 1 Pod

### Evolution 1

In this first evolution, each process will have its dedicated instance, with key concepts including:

1. Management of a VPC
2. Management of communications between instances
3. Securing communications

### Evolution 2

In this second evolution, each process will have its dedicated container, and everything will run on a single instance (EC2), with key concepts including:

1. Securing the exposure of the instance (firewall rules, fail2ban)
2. Managing networks with Docker.

### Evolution 3

In this third evolution, each process will have its dedicated pod, with two instances deployed, one for the control plane and one for the Kubernetes cluster. (It is possible that a managed solution will also be used?)
Key concepts will include:

1. Load balancing management
2. Scaling based on load
3. Securing a k8s cluster
4. Communication between pods
5. Exposing services outside the cluster

## Conclusion

This project is an introduction to cloud and Ansible, with the goal of getting as close as possible to the real deployment conditions of an application stack on a cloud provider. Three different evolutions are considered, each with different key concepts, ranging from the use of dedicated instances to the use of pods in a Kubernetes cluster.
