# Introduction à l'utilisation de docker

## Une très brève introduction à docker en tant qu'utilisateur

L'objectif est d'illustrer la partie "utilisation" d'une image docker construite par quelqu'un d'autre.

![](https://supaerodatascience.github.io/OBD/slides/static/img/docker-jworkflow.jpg)

![](https://dz2cdn1.dzone.com/storage/temp/5288806-docker-stages.png)

Nous allons récupérer une application (un serveur de tuile à la google maps) et la lancer sur la machine en "exposant" le service packagé à la machine.

Pour rappel, vous pouvez utiliser [cette playlist](https://www.youtube.com/playlist?list=PLmw3X80dPdlyRV2EUKnFOvBACs_tcArd0) pour tout comprendre sur docker

**Etape préliminaire** 

Afin de pouvoir accéder à la petite application que nous allons lancer, il faut ouvrir un port sur la machine distante (afin d'éviter de devoir s'y connecter en SSH).

[video](https://storage.googleapis.com/fchouteau-storage/public/firewall.mp4)

Suivez la vidéo suivante afin d'ouvrir le port "8008" sur les machines de votre project GCP.

**Récupérer une image docker**

Nous allons récupérer depuis un "container registry" l'image nommée `ghcr.io/banesullivan/localtileserver:latest`. On utilise pour cela la commande **docker pull**

Lancez ensuite, dans un terminal de votre jupyter lab, la commande suivante:

```bash
docker pull ghcr.io/banesullivan/localtileserver:latest
```


Pour vérifier que vous avez bien récupéré votre image docker, vous pouvez lancer

```bash
docker images
```

Cela doit vous afficher 

```text
REPOSITORY                                                         TAG                                      IMAGE ID       CREATED         SIZE
ghcr.io/banesullivan/localtileserver                               latest                                   223114f05d58   41 hours ago    816MB
```

**Lancement du container**

Nous allons maintenant créer un container à partir de cette image. Pour rappel, un "container" est la version lancée d'une application packagée sous la forme d'une image. On pourrait faire le rapprochement entre une image = une classe et un container = un objet.

Notre image expose une application web sur le port 8000 du container. On souhaite donc relier le port 8000 du container au port 8000 de la machine afin de pouvoir accéder à l'application web en se connectant via notre navigateur à la machine.

Pour cela on utilise **docker run**, avec quelques arguments supplémentaires : 

```bash
docker run --rm -p 8000:8000 -v /home/jupyter/:/home/jupyter/ ghcr.io/banesullivan/localtileserver:latest
```

```text
   --rm : supprime le container dès qu'il est "stoppé"
   -p {HOST}:{CONTAINER} : Expose le port 8000 du container sur le port 8000 de l'hôte (c'est à dire le port de l'application)
  -v {SOURCE}:{DESTINATION} : Monte le chemin depuis la machine source vers le container afin de rendre acccessible les données sur la machine depuis le container (et vice-versa)
```

Ici, nous effectuons donc un tunnel du port 8000 de la machine vers le port 8000 du docker, ce qui permet d'exposer le site web si l'on se connecte sur le port 8000 de la machine.

Nous "montons" aussi notre dossier `/home/jupyter` dans le docker afin qu'il ait accès aux images que nous avons téléchargé lors du notebook 3.

A propos des volumes : https://docs.docker.com/storage/volumes/

A propos des ports :

> In computer networking, a port is a communication endpoint. At the software level, within an operating system, a port is a logical construct that identifies a specific process or a type of network service. A port is identified for each transport protocol and address combination by a 16-bit unsigned number, known as the port number. The most common transport protocols that use port numbers are the Transmission Control Protocol (TCP) and the User Datagram Protocol (UDP).
> 
> Example : 80 is HTTP, 443 is HTTPS, 22 is SSH. Usually jupyter uses 8888

Votre application est maintenant lancée. Afin de vous y connecter, vous pouvez récupérer l'adresse ip publique de votre machine (via l'interface google cloud en allant dans l'onglet "instance de VM") et lancer un navigateur web et vous connnecter à celle ci: http://{ip-de-votre-machine}:8000

Vous devriez ouvrir une page web pointant vers un globe terrestre.

Afin de visualiser une image, il vous faut la renseigner graĉe au chemin vers son fichier, par exemple une image que nous venons de télécharger.

```http://{ip-de-votre-machine}:8000/?filename=/home/jupyter/isae-otsu/data/IMG_PHR1A_PMS_201504131053028_8bits.tif```

Normalement, vous devriez voir votre image satellite s'afficher !

## Pour en savoir plus

Si cela vous intéresse, vous pouvez suivre ce [tutorial introductif à docker](https://docker-curriculum.com)

Vous pouvez suivre les ressources suivantes (cours donné aux SDD) si vous voulez plus d'informations sur docker

- [Cours](https://supaerodatascience.github.io/OBD/slides/1_4_containers.html)
- [TP d'introduction à docker](https://supaerodatascience.github.io/OBD/1_3_docker_tp.html)
- [BE GCP & Docker](https://supaerodatascience.github.io/OBD/1_4_be.html)
- [BE Déployer un modèle en production](https://supaerodatascience.github.io/OBD/1_5_deployment_tp.html)
