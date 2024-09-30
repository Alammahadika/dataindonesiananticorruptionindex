# ANTI-CORRUPTION BEHAVOR INDEX (IPAK) INDONESIA
From the R Language Programmer, this project produces visual development data for Indonesia's anti-corruption behavior (IPAK) 2012 - 2024. Project data collection from [the Indonesian Central Bureau of Statistics](https://www.bps.go.id/id/statistics-table?subject=526). This project also plays a role in reviewing and criticizing Indonesia's anti-corruption behavior.

## [Anti-Corruption Index (IPA) Indonesia by Regions 2012-2024](https://www.bps.go.id/id/statistics-table?subject=526)

### Read Data Base 
```r{}
library(readxl)
anticorruptbehaviorbyregion <- read_excel("~/Desktop/Data Github/anticorruptbehaviorbyregion.xlsx")
View(anticorruptbehaviorbyregion)

library(knitr)
anticorruptbehaviorbyregion <-kable(anticorruptbehaviorbyregion, format = "markdown")
cat(anticorruptbehaviorbyregion)
print(anticorruptbehaviorbyregion)

```
|Regions | Index| Years|
|:-------|-----:|-----:|
|Urban   |  3.66|  2012|
|Urban   |  3.71|  2013|
|Urban   |  3.71|  2014|
|Urban   |  3.71|  2015|
|Urban   |  3.86|  2017|
|Urban   |  3.81|  2018|
|Urban   |  3.86|  2019|
|Urban   |  3.87|  2020|
|Urban   |  3.92|  2021|
|Urban   |  3.96|  2022|
|Urban   |  3.93|  2023|
|Urban   |  3.86|  2024|
|Rural   |  3.46|  2012|
|Rural   |  3.55|  2013|
|Rural   |  3.51|  2014|
|Rural   |  3.46|  2015|
|Rural   |  3.53|  2017|
|Rural   |  3.47|  2018|
|Rural   |  3.49|  2019|
|Rural   |  3.81|  2020|
|Rural   |  3.83|  2021|
|Rural   |  3.90|  2022|
|Rural   |  3.90|  2023|
|Rural   |  3.83|  2024|

### Indonesian Anti Corruption Behaviors Index by Province 2012-2024 
```r{}
library(ggplot2)
ggplot(anticorruptbehaviorbyregion, aes(x = Years, y = Index, group = Regions, color = Regions)) +
  geom_line(size = 0.2, alpha = 0.8)+
  geom_point(size = 0.2) +
  geom_text(aes(label = round(Index, 2)),
            vjust = -1, hjust = 0.5, size = 3) +
  theme_bw() +
  labs(title = "Indonesian Anti Corruption Behaviors by Province 2012-2024",
       subtitle = "Source: Statistic Center Agency",
       x = "Years",
       y = "Index") +
  theme(legend.position = "bottom") +
  scale_x_continuous(breaks = seq(2012, 2024, by = 1)) +
  scale_color_manual(values = c("Urban" = "blue", "Rural" = "red"))
```
