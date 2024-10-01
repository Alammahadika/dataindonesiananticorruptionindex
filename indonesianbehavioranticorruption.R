# ANTI-CORRUPTION BEHAVOR INDEX (IPAK) INDONESIA

#Anti-Corruption Index (IPA) Indonesia by Regions 2012-2024
# read data base 

library(readxl)
anticorruptbehaviorbyregion <- read_excel("~/Desktop/Data Github/anticorruptbehaviorbyregion.xlsx")
View(anticorruptbehaviorbyregion)

library(knitr)
anticorruptbehaviorbyregion <-kable(anticorruptbehaviorbyregion, format = "markdown")
cat(anticorruptbehaviorbyregion)
print(anticorruptbehaviorbyregion)

# Indonesia anti corruption behaviors index by province 2012-2024
# create visual graph analysis
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



# Indonesian Anti-corruption by Age 2012-2024
# read data base 
library(readxl)
ipakbyage <- read_excel("~/Desktop/Data Github/ipakbyage.xlsx")

library(knitr)
ipakbyage <-kable(ipakbyage, format = "markdown")
cat(ipakbyage)
print(ipakbyage)

# Analysis Indonesian Anti-corruption Index by Ages 2012-2024 & Create Visual graph

library(ggplot2)
ggplot(ipakbyage, aes(x = Years, y = Index, group = Age, color = Age)) +
  geom_line(size = 0.5, alpha = 0.8) +
  geom_point(size = 0.5) +
  theme_classic() +
  labs(title = "Indonesian Anti Corruption Behaviors by Ages 2012-2024",
       subtitle = "Soure: Central Statistica Agency",
       x = "Years",
       y = "Index") +
  theme(plot.title = element_text(face = "bold"))+
  theme(legend.position = "bottom") +
  scale_x_continuous(breaks = seq(2012, 2024, by = 1)) +
  scale_color_manual(values = c("<40" = "red", ">60" = "green", "40-50" = "blue"))


# Anti Corruption Behaviors by Social Dimension 2012-2024 
# Read data base 
library(readxl)
behaviorsbydimension <- read_excel("~/Desktop/Data Github/behaviorsbydimension.xlsx")
View(behaviorsbydimension)

library(knitr)
behaviorsbydimension <-kable(behaviorsbydimension, format = "markdown") 
print(behaviorsbydimension)

# Indonesian Anti-corruption behaviors Index by Dimension 2012-2024

library(ggplot2)
ggplot(behaviorsbydimension, aes(x = Years, y = Index, fill = Dimension)) +
  geom_col(position = "stack") +
  geom_text(aes(label = round(Index, 2)), 
            position = position_stack(vjust = 0.5)) +
  scale_fill_manual(values = c("skyblue", "blue")) +
  theme_bw() +
  scale_x_continuous(breaks = seq(2012, 2024, by = 1)) +
  scale_y_continuous(breaks = NULL) +
  labs(x = "Years", y = "Index", 
       title = "Indonesian Anti-Corruption Behaviors by Dimension 2012-2024",
       subtitle = "Source: Sentral Statistic Agency") +
  theme(plot.title = element_text(face = "bold"))





