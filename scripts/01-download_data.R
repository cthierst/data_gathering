#### Preamble ####
# Purpose: Downloads and saves the data from NASA Astronomy Picture of the Day Link: https://apod.nasa.gov/apod/astropix.html
# Author: Chloe Thierstein
# Data: 16 February 2023
# Contact: chlothier@gmail.com 
# License: MIT
# Pre-requisites: Need to know where to find NASA Astronomy Picture of the Day


#### Workspace setup ####
library(httr)
library(tidyverse)
library(xml2)


#### Download data ####
apod_2023_february_16 <-
  GET("https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY&date=2023-02-16")

content(apod_2023_february_16)$url |>
  download.file(destfile = "inputs/apod_2023_february_16.jpg")


content(apod_2023_february_16)$url


tinytex::install_tinytex()