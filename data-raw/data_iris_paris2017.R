#' Base de données données sociales sur les IRIS de Paris
#' 
#' Cette table est un jeu de données sociales sur les iris de Paris n 2017, construit à partir de données de l'Insee.
#'
#' @format Une table de 871 lignes et 54 variables
#' \describe{
#' \item{IRIS}{Identifiant d'IRIS (département, commune, numéro d'IRIS)}
#' \item{LIBIRIS}{Libellé de l'IRIS}
#' \item{TYP_IRIS}{Type d'IRIS : habitat (H), activité (A), divers (D), Autre (Z)}
#' \item{COM}{Code commune Insee}
#' \item{LIBCOM}{Libellé de la commune}
#' \item{DISP_TP6017}{Taux de pauvreté au seuil de 60 % du revenu disponible par unité de consommation médian métropolitain (%)}
#' \item{DISP_Q117}{1er quartile du revenu disponible par unité de consommation (en euros)}
#' \item{P17_POP1564}{Nombre de personnes de 15 à 64 ans}
#' \item{P17_POP1524}{Nombre de personnes de 15 à 24 ans}
#' \item{P17_POP2554}{Nombre de personnes de 25 à 54 ans}
#' \item{P17_POP5564}{Nombre de personnes de 55 à 64 ans}
#' \item{P17_ACT1564}{Nombre de personnes actives de 15 à 64 ans}
#' \item{P17_ACT1524}{Nombre de personnes actives de 15 à 24 ans}
#' \item{P17_ACT2554}{Nombre de personnes actives de 25 à 54 ans}
#' \item{P17_ACT5564}{Nombre de personnes actives de 55 à 64 ans}
#' \item{P17_ACTOCC1564}{Nombre de personnes actives occupées de 15 à 64 ans}
#' \item{P17_ACTOCC1524}{Nombre de personnes actives occupées de 15 à 24 ans}
#' \item{P17_ACTOCC2554}{Nombre de personnes actives occupées de 25 à 54 ans}
#' \item{P17_ACTOCC5564}{Nombre de personnes actives occupées de 55 à 64 ans}
#' \item{P17_CHOM1564}{Nombre de chômeurs de 15 à 64 ans}
#' \item{P17_CHOM1524}{Nombre de chômeurs de 15 à 24 ans}
#' \item{P17_CHOM2554}{Nombre de chômeurs de 25 à 54 ans}
#' \item{P17_CHOM5564}{Nombre de chômeurs de 55 à 64 ans}
#' \item{P17_INACT1564}{Nombre de personnes inactives de 15 à 64 ans}
#' \item{P17_ETUD1564}{Nombre d'élèves, étudiants et stagiaires non rémunérés de 15 à 64 ans}
#' \item{P17_RETR1564}{Nombre de retraités ou préretraités de 15 à 64 ans}
#' \item{P17_AINACT1564}{Nombre d'autres inactifs de 15 à 64 ans}
#' \item{C17_ACT1564}{Nombre de personnes actives de 15 à 64 ans}
#' \item{C17_ACT1564_CS1}{Nombre d'agriculteurs exploitants actifs de 15 à 64 ans}
#' \item{C17_ACT1564_CS2}{Nombre d'artisans, commerçants, chefs d'entreprise actifs de 15 à 64 ans}
#' \item{C17_ACT1564_CS3}{Nombre de cadres et professions intellectuelles supérieures actifs de 15 à 64 ans}
#' \item{C17_ACT1564_CS4}{Nombre de professions intermédiaires actifs de 15 à 64 ans}
#' \item{C17_ACT1564_CS5}{Nombre d'employés actifs de 15 à 64 ans}
#' \item{C17_ACT1564_CS6}{Nombre d'ouvriers actifs de 15 à 64 ans}
#' \item{C17_ACTOCC1564}{Nombre de personnes actives occupées de 15 à 64 ans}
#' \item{C17_ACTOCC1564_CS1}{Nombre d'agriculteurs exploitants actifs occupés de 15 à 64 ans}
#' \item{C17_ACTOCC1564_CS2}{Nombre d'artisans, commerçants, chefs d'entreprise actifs occupés de 15 à 64 ans}
#' \item{C17_ACTOCC1564_CS3}{Nombre de cadres, professions intellectuelles supérieures actifs occupés de 15 à 64 ans}
#' \item{C17_ACTOCC1564_CS4}{Nombre de professions intermédiaires actifs occupés de 15 à 64 ans}
#' \item{C17_ACTOCC1564_CS5}{Nombre d'employés actifs occupés de 15 à 64 ans}
#' \item{C17_ACTOCC1564_CS6}{Nombre d'ouvriers actifs occupés de 15 à 64 ans}
#' \item{C17_ACTOCC15P}{Nombre d'actifs occupés de 15 ans ou plus}
#' \item{C17_ACTOCC15P_PAS}{Nombre d'actifs occupés de 15 ans ou plus qui n'utilisent pas de moyen de transport pour aller travailler}
#' \item{C17_ACTOCC15P_MAR}{Nombre d'actifs occupés de 15 ans ou plus qui vont travailler principalement à pied}
#' \item{C17_ACTOCC15P_VELO}{Nombre d'actifs occupés de 15 ans ou plus qui utilisent principalement un vélo pour aller travailler}
#' \item{C17_ACTOCC15P_2ROUESMOT}{Nombre d'actifs occupés de 15 ans ou plus qui utilisent principalement un deux-roues motorisé pour aller travailler}
#' \item{C17_ACTOCC15P_VOIT}{Nombre d'actifs occupés de 15 ans ou plus qui utilisent principalement la voiture pour aller travailler}
#' \item{C17_ACTOCC15P_TCOM}{Nombre d'actifs occupés de 15 ans ou plus qui utilisent principalement les transports en commun pour aller travailler}
#' \item{part_cadres}{Part des cadres et professions intell. sup. parmi les actifs (C17_ACT1564_CS3 / C17_ACT1564)}
#' \item{taux_chomage}{Part des chômeurs parmi les actifs (P17_CHOM1564 / C17_ACT1564)}
#' \item{arrondissement}{Arrondissement de Paris}
#' \item{niveau_vie_median}{Variable identique à DISP_MED17}
#' \item{categorie_part_cadres}{Discrétisation de la variable part_cadres}
#' \item{categorie_arrondissement}{Classement des arrondissements en deux catégories ("Extérieurs" et "Intérieurs")}
#' }
#'
#' @source \url{https://www.insee.fr/fr/statistiques/fichier/4479212/BASE_TD_FILO_DISP_IRIS_2017.xlsx}
#' @source \url{https://www.insee.fr/fr/statistiques/fichier/4799323/base-ic-activite-residents-2017.zip}
#' 
#' 
#' 
#' 

library(doremifasol)
library(data.table)
library(lest)
library(magrittr)

# Données à l'IRIS sur les revenus disponibles (géographie 2018)
# https://www.insee.fr/fr/statistiques/4479212#consulter
# https://www.insee.fr/fr/statistiques/fichier/4479212/BASE_TD_FILO_DISP_IRIS_2017.xlsx
BASE_TD_FILO_DISP_IRIS_2017 <-
  as.data.table(
    telechargerDonnees("FILOSOFI_DISP_IRIS", date = 2017)
  )

# Données à l'IRIS sur la population (géographie 2019)
# https://www.insee.fr/fr/statistiques/4799323#consulter
# https://www.insee.fr/fr/statistiques/fichier/4799323/base-ic-activite-residents-2017.zip
base_ic_activite_residents_2017 <-
  as.data.table(
    telechargerDonnees("RP_ACTRES_IRIS", date = 2017)
  )
base_ic_activite_residents_2017[, 
                                c("LIBIRIS", "COM", "LIBCOM") := NULL]

# Joindre les deux tables et ne conserver que Paris
data_iris_paris2017 <- 
  BASE_TD_FILO_DISP_IRIS_2017[substr(COM, 1L, 2L) == "75"] %>%
  merge(base_ic_activite_residents_2017,
        by = "IRIS",
        all.x = TRUE)

# Créer des variables utiles pour les exemples
data_iris_paris2017[, 
                    `:=`(
                      part_cadres = C17_ACT1564_CS3 /C17_ACT1564,
                      taux_chomage = P17_CHOM1564 / C17_ACT1564,
                      arrondissement = substr(COM, 4L, 5L),
                      niveau_vie_median = DISP_MED17
                    )
                    ][,
                      `:=`(
                        categorie_part_cadres = lest::case_when(
                          part_cadres < 0.3  ~ "[0; 30%[",
                          part_cadres < 0.45  ~ "[30%; 45%[",
                          part_cadres < 0.55  ~ "[45%; 55%[",
                          TRUE ~ "> 55%"
                        ),
                        categorie_arrondissement = 
                          lest::case_when(
                            arrondissement <= "11" ~ "Arrondissements intérieurs",
                            TRUE ~ "Arrondissements extérieurs"
                          )
                      )
                      ]
# Sélectionner les variables finales
variables_finales <- 
  c("IRIS", "LIBIRIS", "TYP_IRIS", "COM", "LIBCOM", 
    "DISP_TP6017", "DISP_Q117",
    'P17_POP1564', 'P17_POP1524', 'P17_POP2554', 'P17_POP5564', 
    'P17_ACT1564', 'P17_ACT1524', 'P17_ACT2554', 'P17_ACT5564', 
    'P17_ACTOCC1564', 'P17_ACTOCC1524', 'P17_ACTOCC2554', 'P17_ACTOCC5564', 
    'P17_CHOM1564', 'P17_CHOM1524', 'P17_CHOM2554', 'P17_CHOM5564', 
    'P17_INACT1564', 'P17_ETUD1564', 'P17_RETR1564', 'P17_AINACT1564', 
    'C17_ACT1564', 'C17_ACT1564_CS1', 'C17_ACT1564_CS2', 'C17_ACT1564_CS3', 
    'C17_ACT1564_CS4', 'C17_ACT1564_CS5', 'C17_ACT1564_CS6', 
    'C17_ACTOCC1564', 'C17_ACTOCC1564_CS1', 'C17_ACTOCC1564_CS2', 'C17_ACTOCC1564_CS3', 
    'C17_ACTOCC1564_CS4', 'C17_ACTOCC1564_CS5', 'C17_ACTOCC1564_CS6', 
    'C17_ACTOCC15P', 'C17_ACTOCC15P_PAS', 'C17_ACTOCC15P_MAR', 'C17_ACTOCC15P_VELO', 
    'C17_ACTOCC15P_2ROUESMOT', 'C17_ACTOCC15P_VOIT', 'C17_ACTOCC15P_TCOM', 
    "part_cadres", "taux_chomage", "arrondissement", "niveau_vie_median", 
    "categorie_part_cadres", "categorie_arrondissement"    
  )

data_iris_paris2017 <- 
  as.data.frame(data_iris_paris2017[, .SD, .SDcols = variables_finales])

# Sauvegarder les données
usethis::use_data(data_iris_paris2017, overwrite = TRUE)

