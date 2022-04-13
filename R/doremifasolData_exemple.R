#' Récupérer le chemin vers les fichiers plats contenus dans  `inst/extdata`
#'
#' {DoremifasolData} est livré avec un certain nombre de fichiers 
#' plats dans le répertoire `inst/extdata`
#' Cette fonction en facilite leur accès en retournant leurs chemins.
#'
#' @param fichier Nom du fichier. Si `NULL`, les fichiers exemples sont listés.
#' @export
#' @examples
#' doremifasolData_exemple()
#' doremifasolData_exemple("communes-01012019.csv")

doremifasolData_exemple <- function(fichier = NULL) {
  if (is.null(fichier)) {
    dir(system.file("extdata", package = "doremifasolData"))
  } else {
    system.file("extdata", fichier, package = "doremifasolData", mustWork = TRUE)
  }
}
