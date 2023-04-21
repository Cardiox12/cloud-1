# Cloud-1

## Introduction

Ce projet est une introduction au cloud.
Dans la réalité, ce projet est surtout une introduction à Ansible plus qu'au cloud, nous avons décidé d'aller plus loin.
L'idée étant dans la pratique de s'approcher au plus près des conditions réelles de déploiement d'une stack applicative sur un cloud provider, 
ce sujet fera office d'objectif, de fil rouge.
L'automatisation sera faite de A à Z dont notamment le provisionning du cloud provider et le provisionning de l'infrastructure créée, les outils utilisés
seront Terraform et Ansible.

Afin de coller au mieux à la philosophie **Devops** et dans un soucis d'économie (le déploiement d'instances étant honéreux), deux environnements seront
crées, un environnement de *développement* (local) et un environnement de *production*, le but étant d'avoir un environnement de développement se **rapprochant**
au maximum de l'environnement de production.

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
Dans cette deuxième évolution, chaque processus aura son container dédié, tout se déroulera sur une seule
instance (EC2) et les notions clé seront : 
    1. Sécurisation de l'exposition de l'instance (règles firewall, fail2ban)
    2. Gestion des réseaux avec Docker.

### Évolution 3
Dans cette troisième évolution, chaque processus aura son pod dédié, deux instances seront déployées, une instance
pour le control plane et une instance pour cluster kubernetes. (Il est possible qu'une solution managée soit également utilisée?)
Les notions clés seront :
    1. Gestion du load balancing
    2. Scaling en fonction de la charge
    3. Sécurisation d'un cluster k8s
    4. Communication entre les pods
    5. Exposition des services en dehors du cluster
