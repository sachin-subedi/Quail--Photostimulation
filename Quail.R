library(tidyverse)
library(gtable)
library(grid)
library(plotly)
library(lubridate)
library(magrittr)
library(gridExtra)
library(ggforce)
library(kableExtra)
library(leaflet)
library(rlang)
library(scales)

Female <- data.frame(Treatments=c("Treatment A","Treatment B", "Treatment C"),Weight=c(237.466667, 251.08, 244.485714), Oviduct=c(0.054667, 0.4686, 2.034143), Ovary=c(0.112333, 0.5834, 1.172714))

p1 <-ggplot(data=Female, aes(x=Treatments, y=Weight, fill = Treatments)) +
  geom_bar(stat="identity", width = 0.4)+
  xlab('') + ylab('Body Weight (g)')+
  scale_fill_manual(values = c("Treatment A" = "red",
                               "Treatment B" = "yellow",
                               "Treatment C" = "orange"))+ theme_classic()+
  theme(legend.position = "none")

p2 <-ggplot(data=Female, aes(x=Treatments, y=Ovary, fill = Treatments)) +
  geom_bar(stat="identity", width =0.4)+
  xlab('') + ylab('Ovary (g)')+
  scale_fill_manual(values = c("Treatment A" = "red",
                               "Treatment B" = "yellow",
                               "Treatment C" = "orange"))+ theme_classic()+
  theme(legend.position = "none")

p3 <-ggplot(data=Female, aes(x=Treatments, y=Oviduct, fill = Treatments)) +
  geom_bar(stat="identity", width=0.4)+
  xlab('') + ylab('Oviduct (g)') +
  scale_fill_manual(values = c("Treatment A" = "red",
                               "Treatment B" = "yellow",
                               "Treatment C" = "orange"))+ theme_classic()+
  theme(legend.background = element_rect(fill="white", size=1, linetype="solid"))
grid.arrange(p1,
             p2,
             p3,
             nrow=3, 
             top = "Weights in Female Quail",
             bottom = textGrob("Sachin Subedi",
                               gp=gpar(fontface = 3, fontsize = 7),
                               hjust = 1.5,
                               x=1
             )
) 


Male <- data.frame(Treatments=c("Treatment A","Treatment B", "Treatment C"), Weight=c(219.066667, 233.488889, 220.45), Testes=c(0.141, 2.043467, 3.355375))
q1 <-ggplot(data=Male, aes(x=Treatments, y=Weight, fill = Treatments)) +
  geom_bar(stat="identity", width = 0.4)+
  xlab('') + ylab('Body Weight (g)')+
  scale_fill_manual(values = c("Treatment A" = "red",
                               "Treatment B" = "yellow",
                               "Treatment C" = "orange"))+ theme_classic()+
  theme(legend.position = "none")
q2 <-ggplot(data=Male, aes(x=Treatments, y=Testes, fill = Treatments)) +
  geom_bar(stat="identity", width =0.4)+
  xlab('') + ylab('Testes (g)')+
  scale_fill_manual(values = c("Treatment A" = "red",
                               "Treatment B" = "yellow",
                               "Treatment C" = "orange"))+ theme_classic()+
  theme(legend.position = "bottom")

grid.arrange(q1,
             q2,
             nrow=3, 
             top = "Weights in Male Quail",
             bottom = textGrob("Sachin Subedi",
                               gp=gpar(fontface = 3, fontsize = 7),
                               hjust = 1.5,
                               x=1
             )) 


