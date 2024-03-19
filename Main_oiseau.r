

#Combiner les fichiers csv et extraire les données
source("fonction_combiner.r")
donnee_oiseau <- Combine_csv()

#Nettoyage des données

source("fonction_na.r")
donnee_oiseau <- remplacer_NULL_par_NA(donnee_oiseau)

source("fonction_date.r")
donnee_oiseau <- convertir_date(donnee_oiseau, "date_obs")

source("fonction_lat.r")
resultat_verification <- verifier_limites_latitude(donnee_oiseau, "lat")

