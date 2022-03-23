library(tidyverse)
library(dplyr)
library(data.table)

diamonds

diamonds%>%
  select(carat,cut,price)%>%
  filter(cut == "Premium")%>%
  filter(price > 7000 & price < 10000)%>%
  arrange(desc(carat))%>%
  slice(1:20)

# A tibble: 20 × 3
   carat cut     price
   <dbl> <ord>   <int>
 1  3.01 Premium  8040
 2  3.01 Premium  9925
 3  2.68 Premium  8419
 4  2.5  Premium  8467
 5  2.43 Premium  9716
 6  2.34 Premium  8491
 7  2.33 Premium  8220
 8  2.3  Premium  7226
 9  2.17 Premium  9078
10  2.12 Premium  7508
11  2.06 Premium  9967
12  2.05 Premium  9850
13  2.05 Premium  9850
14  2.05 Premium  9850
15  2.04 Premium  7403
16  2.04 Premium  8408
17  2.04 Premium  9727
18  2.04 Premium  9905
19  2.03 Premium  7421
20  2.03 Premium  9435
