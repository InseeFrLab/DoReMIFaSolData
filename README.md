
<!-- README.md is generated from README.Rmd. Please edit that file -->

# doremifasolData

<!-- badges: start -->

![build-artifacts](https://github.com/inseefrlab/doremifasolData/workflows/build-artifacts/badge.svg)
<!-- badges: end -->

`doremifasolData` est un package de données qui met à disposition un
petit nombre de jeux de données téléchargeables avec le package
[`doremifasol`](https://inseefrlab.github.io/DoReMIFaSol/).

La finalité principale est de pouvoir utiliser ces données à des fins
pédagogiques, notamment pour construire des exemples reproductibles
sans avoir recours à un téléchargement sur Internet.

## Installation

Installer le package depuis GitHub :

``` r
# install.packages("remotes")
remotes::install_github("InseeFrLab/doremifasolData")
```

## Chargement

``` r
library(doremifasolData)
```

## Jeux de données disponibles

| Nom                   | Description                                                     |
| :-------------------- | :-------------------------------------------------------------- |
| bpe\_ens\_2018        | Base Permanente des Équipements 2018                            |
| bpe\_ens\_2019        | Base Permanente des Équipements 2019                            |
| bpe\_ens\_xy\_2018    | Base Permanente des Équipements Géolocalisés 2018               |
| cog\_com\_2019        | Code Officiel Géographique 2019                                 |
| data\_iris\_paris2017 | Données sociales sur les IRIS de Paris 2017                     |
| filosofi\_com\_2015   | Données sur les revenus et la pauvreté en 2015, niveau communal |
| filosofi\_com\_2016   | Données sur les revenus et la pauvreté en 2016, niveau communal |
| filosofi\_epci\_2015  | Données sur les revenus et la pauvreté en 2015, niveau EPCI     |
| filosofi\_epci\_2016  | Données sur les revenus et la pauvreté en 2016, niveau EPCI     |

[Documentation
détaillée](https://inseefrlab.github.io/DoReMIFaSolData/reference)
