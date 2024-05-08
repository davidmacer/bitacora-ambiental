library(sf)
library(dplyr)

regiones <- st_read("./app/geojson/regiones_puebla.geojson")

regiones <- regiones |> mutate(REGIONES =
                                 c("Región 15. Izúcar de Matamoros; Región 19. Atlixco; <br />Región 20. San Martín Texmelucan; Región 21. Puebla; Región 22. Tepeaca",
                                   "Región 8. Libres; Región 9. Quimixtlán; <br /> Región 10. Acatzingo; Región 11. Ciudad Serdán ",
                                   "Región 4. Huehuetla; Región 5. Zacapoaxtla; Región 6. Teziutlán",
                                   "Región 1. Xicotepec; Región 2. Huauchinango; <br /> Región 3. Zacatlán; Región 7. Chignahuapan",
                                   "Región 16. Chiautla; Región 17. Acatlán; <br />Región 18. Tepexi de Rodríguez",
                                   "Región 12. Tecamachalco; Región 13. Tehuacán; <br />Región 14. Sierra Negra"),
                               .after = "ZONA"
                               )

regiones |>
  st_write(dsn = "./app/geojson/regiones_puebla.geojson",
           driver = "GEOJson",
           delete_dsn = TRUE)
