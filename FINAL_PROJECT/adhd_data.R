


if( !dir.exists(here::here("FINAL_PROJECT","data"))) {
  dir.create(here::here("FINAL_PROJECT","data"), recursive =TRUE)
}


url <- "https://figshare.com/articles/dataset/_ADHD_rating_scale_IV_ARS_IV_inattentive_IA_hyperactive_impulsive_HI_and_combined_symptoms_COM_total_raw_scores_as_rated_by_parents_/224633/1" 
download.file(url, 
              here::here("FINAL_PROJECT",
                         "data","adhd.cvs"),
              mode= "wb")     
