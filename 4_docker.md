# Introduction à l'utilisation de docker

## Une très brève introduction à docker en tant qu'utilisateur

**Etape préliminaire** 

Afin de pouvoir accéder à la petite application que nous allons lancer, il faut ouvrir un port sur la machine distante (afin d'éviter de devoir s'y connecter en SSH).

[video](https://storage.googleapis.com/fchouteau-storage/public/firewall.mp4)

Suivez la vidéo suivante afin d'ouvrir le port "8008" sur les machines de votre project GCP.

**Ma première application**

Lancez ensuite, dans un terminal de votre jupyter lab, la commande suivante:

```bash
docker pull ghcr.io/banesullivan/localtileserver:latest
```

```bash
docker run --rm -p 8008:8000 -v /home/jupyter/:/data/ ghcr.io/banesullivan/localtileserver:latest
```

## Pour en savoir plus

Vous pouvez suivre les ressources suivantes (cours donné aux SDD) si vous voulez plus d'informations sur docker

- [Cours](https://supaerodatascience.github.io/OBD/slides/1_4_containers.html)
- [TP Docker](https://supaerodatascience.github.io/OBD/1_3_docker_tp.html)
- [BE GCP & Docker](https://supaerodatascience.github.io/OBD/1_4_be.html)
- [BE Déployer un modèle en production](https://supaerodatascience.github.io/OBD/1_5_deployment_tp.html)
