# Serveur Git Docker avec SSH

## Description

Ce projet met en place un **serveur Git** dans un conteneur Docker, ainsi qu'un client qui interagit avec ce serveur via SSH. L'objectif est de démontrer l'utilisation de Docker, SSH, et Git dans un environnement de développement isolé.

## Objectifs
- Configurer un serveur Git dans un conteneur Docker.
- Configurer un client Docker pour interagir avec le serveur Git via SSH.
- Utiliser Docker Compose pour faciliter la gestion de l'infrastructure.

## Technologies utilisées
- **Docker** : Pour créer et exécuter des conteneurs.
- **Git** : Pour gérer le contrôle de version.
- **SSH** : Pour sécuriser les connexions entre le client et le serveur Git.
- **Docker Compose** : Pour gérer plusieurs conteneurs en une seule commande.

## Prérequis

Avant de commencer, voici ce dont tu auras besoin :
- **Docker** : Pour construire et exécuter les conteneurs.
- **Docker Compose** : Pour gérer les services via un fichier `docker-compose.yml`.
- **Clé SSH** : Pour permettre une connexion sécurisée entre le client et le serveur.

### Commandes pour installer Docker et Docker Compose :

```bash
# Installer Docker (si ce n'est pas déjà fait)
sudo apt update
sudo apt install docker.io

# Installer Docker Compose (si ce n'est pas déjà fait)
sudo apt install docker-compose
