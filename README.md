
<!-- README.md is generated from README.Rmd. Please edit that file -->

# :package: doremifasolData

<!-- badges: start -->

![build-artifacts](https://github.com/inseefrlab/doremifasolData/workflows/build-artifacts/badge.svg)
<!-- badges: end -->

`doremifasolData` est un package de données qui met à disposition un
petit nombre de jeux de données téléchargeables avec le package
[`doremifasol`](https://inseefrlab.github.io/DoReMIFaSol/).

La finalité principale est de pouvoir utiliser ces données à des fins
pédagogiques, notamment pour construire des exemples reproductibles sans
avoir recours à un téléchargement sur Internet.

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

| Nom.Nom…..doremifasolData\_exemple.. | Description.Nom…..doremifasolData\_exemple..                    |
|:-------------------------------------|:----------------------------------------------------------------|
| bpe\_ens\_2018                       | Base Permanente des Équipements 2018                            |
| cog\_com\_2019                       | Code Officiel Géographique 2019                                 |
| data\_iris\_paris\_2017              | Données sociales sur les IRIS de Paris 2017                     |
| filosofi\_com\_2016                  | Données sur les revenus et la pauvreté en 2016, niveau communal |
| filosofi\_epci\_2016                 | Données sur les revenus et la pauvreté en 2016, niveau EPCI     |

## Fonction disponible

`doremifasolData` est livré avec un certain nombre de fichiers plats
dans le répertoire `inst/extdata`.  
La fonction
[`doremifasolData_exemple()`](https://inseefrlab.github.io/DoReMIFaSolData/docs/reference/doremifasolData_exemple.html)
en facilite leur accès en retournant leurs chemins.

Cette fonction est particulièrement pour constituer des exemples
reproductibles par exemple avec les fonctions `read_csv()` et
`read_delim()` du package
[{readr}](https://readr.tidyverse.org/reference/read_delim.html) ou
encore la fonction `fread()` du package
[{data.table}](https://www.rdocumentation.org/packages/data.table/versions/1.14.2/topics/fread).  
Pour en savoir plus, consulter [cette
page](https://www.book.utilitr.org/importcsv.html).

[Voir ici la documentation
détaillée](https://inseefrlab.github.io/DoReMIFaSolData/reference)
