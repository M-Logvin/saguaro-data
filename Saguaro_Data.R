##saguaro census data

setwd("C:/Users/mathi/Documents/Saguaro_Data") ##change to your WD

packages <- c("ggplot2", "tidyverse", "tidyr", "dplyr", "viridisLite")

for (pkg in packages) {
  if (!require(pkg, character.only = TRUE)) {
    install.packages(pkg)
    library(pkg, character.only = TRUE)
  }
}


  ##Change to where you downloaded the csv file
saguaro <- read.csv("C:/Users/mathi/Documents/Saguaro_Data/SaguaroCensusData+csv.csv")


  pivot_longer(
    cols = starts_with("HT")-"HTYEARFIRSTMEASURED", # Select all year columns (assuming they start with "20")
    names_to = "Year",        # Name for the new column containing year identifiers
    values_to = "Height"      # Name for the new column containing height values
  )

  tidy_saguaro <- saguaro %>%
    pivot_longer(
      cols = 16:52,                # Select columns containing height data
      names_to = "Year",           # Create a new column called "Year"
      names_prefix = "HT",         # Remove the "HT" prefix
      values_to = "Height",        # Create a new column for height values
      names_transform = list(Year = as.character) # Make sure "Year" is treated as a character initially
    ) %>%
    mutate(
      Year = as.numeric(gsub("INCH", "", Year)),  # Remove "INCH" from Year and convert to numeric
      Year = if_else(Year >= 30, 1900 + Year, 2000 + Year) # Adjust based on the range
    ) %>%
    # Ensure that all additional columns are copied
    mutate(
      PLOTID = rep(saguaro$PLOTID, each = 37),
      PLANTID = rep(saguaro$PLANTID, each = 37),
      SAGUAROID = rep(saguaro$SAGUAROID, each = 37),
      YRADDED = rep(saguaro$YRADDED, each = 37),
      YRFIRSTMEASURED = rep(saguaro$YRFIRSTMEASURED, each = 37),
      HTYEARFIRSTMEASURED = rep(saguaro$HTYEARFIRSTMEASURED, each = 37),
      SLAGEYEARFIRSTMEASURED = rep(saguaro$SLAGEYEARFIRSTMEASURED, each = 37),
      `S&LGERMINATIONYEAR` = rep(saguaro$`S&LGERMINATIONYEAR`, each = 37),
      TNAGEYEARFIRSTMEASURED = rep(saguaro$TNAGEYEARFIRSTMEASURED, each = 37),
      `T&NGERMINATIONYEAR` = rep(saguaro$`T&NGERMINATIONYEAR`, each = 37),
      `NURSE PLANT` = rep(saguaro$`NURSE PLANT`, each = 37),
      `COVER CLASS` = rep(saguaro$`COVER CLASS`, each = 37),
      YRDEAD = rep(saguaro$YRDEAD, each = 37),
      AGEDEAD = rep(saguaro$AGEDEAD, each = 37),
      CAUSE = rep(saguaro$CAUSE, each = 37)
    ) %>%
    # Remove columns 16:49
    select(-c(16:49))
  
  
  
  subset_saguaro <- tidy_saguaro %>%
    select(PLOTID, Year, Height) %>%
    mutate(Height = ifelse(Height < 0, NA, Height)) # Replace values < 0 with NA
  
  
  plot_dependent_check <- aov(Height ~ PLOTID, data = subset_saguaro)
  summary(plot_dependent_check)
  
  # Aggregate data by Year
  avg_height_per_year <- subset_saguaro %>%
    group_by(Year) %>%
    summarise(Average_Height = mean(Height, na.rm = TRUE))
    # Bar plot with color responding to the year
  ggplot(avg_height_per_year, aes(x = Year, y = Average_Height, fill = Average_Height)) +
    geom_bar(stat = "identity", color = "black") + # Black outline for the bars
    scale_fill_viridis_c(option = "viridis", name = "Height", begin = 0.3, end = 0.9) + # Use the turbo palette
    theme_minimal() +
    labs(
      title = "Average Saguaro Height",
      x = "Year",
      y = "Average Height, Inches"
    ) +
    theme(axis.text.x = element_text(angle = 45, hjust = 1))
  
  ##add summer peak temperature, or yearly average?
  ##graph (jittered) dot plot of height vs time, with color being avg temp
  
