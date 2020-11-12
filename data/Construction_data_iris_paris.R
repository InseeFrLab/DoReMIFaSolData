library(doremifasol)
library(data.table)
library(stringr)
library(ggplot2)
library(lest)
library(magrittr)



# Données à l'IRIS sur les revenus disponibles (géographie 2018)
# https://www.insee.fr/fr/statistiques/4479212#consulter
# https://www.insee.fr/fr/statistiques/fichier/4479212/BASE_TD_FILO_DISP_IRIS_2017.xlsx

BASE_TD_FILO_DISP_IRIS_2017 <-
  as.data.table(
    readxl::read_xlsx("/Users/Olivier/Downloads/BASE_TD_FILO_DISP_IRIS_2017.xlsx", 
                      skip = 5L)
  )

# Données à l'IRIS sur la population (géographie 2019)
# https://www.insee.fr/fr/statistiques/4799323#consulter
# https://www.insee.fr/fr/statistiques/fichier/4799323/base-ic-activite-residents-2017.zip

base_ic_activite_residents_2017 <-
  as.data.table(
    readxl::read_xlsx("/Users/Olivier/Downloads/base-ic-activite-residents-2017.xlsx", 
                      sheet = "IRIS",
                      skip = 5L)
  )
base_ic_activite_residents_2017[, 
                                c("LIBIRIS", "COM", "LIBCOM") := NULL]

# 
data_iris_paris <- 
  BASE_TD_FILO_DISP_IRIS_2017[substr(COM, 1L, 2L) == "75"] %>%
  merge(base_ic_activite_residents_2017,
        by = "IRIS",
        all.x = TRUE)

data_iris_paris[, 
                `:=`(
                  part_cadres = C17_ACT1564_CS3 /C17_ACT1564,
                  taux_chomage = P17_CHOM1564 / C17_ACT1564
                )
                ][,
                  categorie := lest::case_when(
                    part_cadres < 0.3  ~ "[0; 30%[",
                    part_cadres < 0.45  ~ "[30%; 45%[",
                    part_cadres < 0.55  ~ "[45%; 55%[",
                    TRUE ~ "> 55%"
                  ) 
                  ]


ggplot(data_iris_paris) + 
  geom_point(aes(x = DISP_MED17, y = taux_chomage))
ggplot(data_iris_paris) + 
  geom_point(aes(x = DISP_MED17, y = taux_chomage, color = factor(categorie))) + 
  theme(legend.position = "bottom")




