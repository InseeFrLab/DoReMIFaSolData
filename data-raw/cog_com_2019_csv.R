library(doremifasol)
library(here)


cog_com_2019 <- telechargerFichier(donnees = "COG_COMMUNE", date = "2019", telDir = here::here())
Encoding(cog_com_2019$ncc) <- "UTF-8"
Encoding(cog_com_2019$nccenr) <- "UTF-8"
Encoding(cog_com_2019$libelle) <- "UTF-8"


# Dezippe le fichier en cas de besoin
if (cog_com_2019$zip) {
  nomFichier <- cog_com_2019$fileArchive
  dossier_unz <- dirname(nomFichier)
  if (!endsWith(nomFichier, ".zip")) {
    stop("Le fichier t\u00e9l\u00e9charg\u00e9 n'est pas une archive zip.")
  } else {
    if (!cog_com_2019$big_zip) {
      unzipped <- unzip(nomFichier, exdir = "inst/extdata")
    } else {
      unzipped <- file.path("inst/extdata", unzip(nomFichier, list = TRUE)$Name)
      err_unz <- tryCatch(unzip(nomFichier, exdir = "inst/extdata", unzip = "unzip"))
      if (!is.null(err_unz)) stop(err_unz$message)
    }
  }
  
  ## vérifie si le fichier existe
  if (!file.exists(nomFichier))
    stop("Le fichier t\u00e9l\u00e9charg\u00e9 est introuvable.")
  
  # on ne conserve que communes-01012019.csv et on supprime le zip
  unlink(unzipped[unzipped!="inst/extdata/communes-01012019.csv"])
  unlink(cog_com_2019$fileArchive)
}
