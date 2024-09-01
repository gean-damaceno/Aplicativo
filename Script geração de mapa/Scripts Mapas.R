library(geobr)
library(dplyr)
library(ggplot2)
library(ggspatial)
library(tidyverse)
library(stringr)
dados <- list_geobr()
D <- read_municipality(code_muni = 'all', year = 2018)
D2 <- filter(D, abbrev_state == 'MG')
D1 <- filter(D2, name_muni == 'Uberlândia')
D3 <- filter(D2, name_muni == 'Varginha')
D4 <- filter(D2, name_muni == 'Carrancas')
plot(D3)
ggplot() +
  geom_sf(data = D2) +
  geom_sf(data = D1, fill = 'blue', color = 'black') + 
  geom_sf(data = D3, fill = 'green', color = 'black') +
  geom_sf(data = D4, fill = 'red', color = 'black') +
  theme_classic() + 
  theme(axis.text.x = element_blank(), axis.text.y  = element_blank()) +
  labs(title = 'Minas Gerais', x = 'Longitude', y = 'Latitude') +
  annotation_north_arrow( location = 'tr') + 
  annotation_scale() 
### Criar um mapa para saber se uma população cresceu ou não 
# população crescente/população anterior


#### Criando Os bairros de Belo Horizonte
D5 <- read_neighborhood()
TF <- D5%>%filter(str_detect(name_muni, 'Belo Horizonte'))

ggplot(color = 'black') +
  geom_sf(data = TF, color = 'red')
#############################################################################
#############################################################################
#############################################################################
#############################################################################
#############################################################################
#############################################################################
 
 