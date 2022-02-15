# ISAE-OTSU EO Class

## Cours

- 02/02 [Slides](https://docs.google.com/presentation/d/1aIFip6-Sfb8GIl6JriaMBQprG19iEyLc6Zm7QESnMN4/edit?usp=sharing)
- 14/02 Slides (WIP)

## BE  

### 0 - Mise en place

Vous devriez avoir un compte GCP créé avec des crédits. Si ce n'est pas le cas, vous pouvez partager un projet GCP à plusieurs (voir ci-dessous)

- Rendez-vous sur [console.cloud.google.com](https://console.cloud.google.com)
- Allez sur votre projet
- Sélectionner VERTEX AI / Workbench
- New Notebook -> Python3 -> Adavanced Options -> Sélectionnez la zone "europe-west1-b" (belgium) ou europe-west4-a (netherlands) si indispo.
- Attendez la création de la VM
- Une fois celle-ci créée, cliquez sur "Open Jupyterlab"

**Création d'une VM** : [video](https://storage.googleapis.com/fchouteau-storage/public/shapre_project.mp4)

**Partage d'un projet GCP entre plusieurs personnes** : [video](https://storage.googleapis.com/fchouteau-storage/public/shapre_project.mp4)

### 1 - Introduction à dask, xarray

Effectuez les notebooks suivants dans l'ordre:

- 0_introduction_dask.ipynb
- 1_introduction_xarray.ipynb
- 2_dask_xarray_satellite_imagery.ipynb
- 3_visualisation_series_temp.ipynb

### 2 (optionnel) - Introduction à docker

Suivez `4_docker.md`
