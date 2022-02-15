# ISAE-OTSU EO Class

## Cours

- 02/02 [Slides](https://docs.google.com/presentation/d/1aIFip6-Sfb8GIl6JriaMBQprG19iEyLc6Zm7QESnMN4/edit?usp=sharing)
- 14/02 Slides (WIP)

## BE  

### Mise en place

Lors des précédents BE, vous avez normalement créé un projet GCP avec un compte alimenté par des crédits. Il devrait en rester assez pour vous permettre de faire ce BE qui ne nécessite pas de GPUs. 

Si ce n'est pas le cas, vous pouvez partager un projet GCP à plusieurs (voir ci-dessous), par exemple en binôme.

- Rendez-vous sur [console.cloud.google.com](https://console.cloud.google.com)
- Allez sur votre projet
- Sélectionner VERTEX AI / Workbench
- New Notebook -> Python3 -> Adavanced Options -> Sélectionnez la zone "europe-west1-b" (belgium) ou europe-west4-a (netherlands) si indispo.
- Attendez la création de la VM
- Une fois celle-ci créée, cliquez sur "Open Jupyterlab"

**Création d'une VM** : [video](https://storage.googleapis.com/fchouteau-storage/public/setup_vm.mp4)

**Partage d'un projet GCP entre plusieurs personnes** : [video](https://storage.googleapis.com/fchouteau-storage/public/share_project.mp4)

Ensuite, dans un terminal :

`git clone https://github.com/fchouteau/isae-otsu`

### Introduction à dask, xarray

Pour avoir plus d'informations sur dask, voici le [slidedeck d'introduction](https://docs.google.com/presentation/d/e/2PACX-1vSTH2kAR0DCR0nw8pFBe5kuYbOk3inZ9cQfZbzOIRjyzQoVaOoMfI2JONGBz-qsvG_P6g050ddHxSXT/pub?start=false&loop=false&delayms=60000#slide=id.p)

Effectuez les notebooks suivants dans l'ordre:

- 0_introduction_dask.ipynb - Ce notebook vous donnera une introduction à Dask pour le traitement des données
- 1_introduction_xarray.ipynb - Ce notebook vous donnera un aperçu de xarray, une librairie de manipulation de données multidimensionnelles "faisant le pont entre numpy et pandas
- 2_dask_xarray_satellite_imagery.ipynb - L'application de dask & xarray pour l'analyse d'images satellites
- 3_visualisation_series_temp.ipynb - L'utilisation de dask, xarray et d'autres outils de visualisation (ipyleaflet) pour le traitement d'une série temporelle d'images sur Toulouse

Si cela vous intéresse, le site de Dask donne accès à de nombreux guides supplémentaires, notamment [ce tutorial](https://tutorial.dask.org/) qui parcours les fonctionnalités offertes par dask à la fois en traitement de données mais aussi en apprentissage automatique.

### (Optionnel) Introduction à docker

Une brève introduction à docker visant à reproduire la demo effectuée en cours.

Suivez `4_docker.md`
