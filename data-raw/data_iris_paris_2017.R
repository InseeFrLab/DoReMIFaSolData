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

data_iris_paris_2017 <- 
  as.data.frame(data_iris_paris2017[, .SD, .SDcols = variables_finales])

# Sauvegarder les données
usethis::use_data(data_iris_paris_2017, overwrite = TRUE)
