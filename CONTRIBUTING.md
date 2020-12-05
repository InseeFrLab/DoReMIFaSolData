# Contribuer à `doremifasolData`

Cette page explique comment proposer une modification de **`doremifasolData`**.

## Nouveau jeu de données

### Vérifier l'existence dans le package `doremifasol`

Tout jeu de données du package doit être également récupérable par téléchargement avec le package [`doremifasol`](https://inseefrlab.github.io/DoReMIFaSol).

Il faut donc s'assurer au préalable de son existence. Cette vérification peut être réalisée avec `doremifasol::donnees_dispo()`.

Si la source n'est pas disponible, commencer par suggérer son ajout en créant une [_issue_](https://github.com/InseeFrLab/DoReMIFaSol/issues/new?template=suggerer_source.md) sur le dépôt **`doremifasol`**.

Il est important de garder à l'esprit que **`doremifasolData`** n'a vocation à héberger qu'une partie des jeux de données récupérables via **`doremifasol`**, ceci principalement à des fins pédagogiques. En cas de doute sur la pertinence de l'ajout, créer une _issue_ pour en discuter.

### Intégrer le jeu de données au package

#### Ajouter les données

Si la source est disponible dans **`doremifasol`**, l'ajouter sous forme de fichier Rdata (extension .rda) dans le répertoire `data/`. 

Donner au même nom au fichier qu'au data.frame. Par exemple, la table `bpe_ens_2018` est stockée dans le fichier `bpe_ens_2018.rda`.

**Cette étape peut être automatisée avec** `usethis::use_data(<nouveau_jeu_de_donnees>)`.

#### Documenter les données

Il est indispensable de documenter le nouveau jeu de données, en particulier à quoi correspondent les colonnes. Le package utilise le package roxygen2 pour générer la documentation à partir de fichiers R.

Pour cela, créer un fichier R sur [ce modèle](https://github.com/InseeFrLab/DoReMIFaSolData/blob/main/R/bpe_ens_2018.R). Le fichier doit porter le même nom que le jeu de données. Par exemple, la table `bpe_ens_2018.R` pour les données `bpe_ens_2018`.

Une fois ce fichier réalisé, générer les fichiers .Rd avec la commande `devtools::document()`.

## Autres contributions

Pour tout autre contribution, créer une _issue_.
