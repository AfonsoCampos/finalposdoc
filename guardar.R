::: panel-tabset
### Artigos

### Artigos|Anos

::: {.fragment .fade-up}
```{r}
#| echo: false


library(rio)
library(vistime)
library(tidyverse)
library(highcharter)
artigos <- data.frame(datas = 2017:2022, 
                      num_art = c(1,0,0,3,1,1))
library(plotly)
p1_artigos <- artigos |> 
  ggplot(aes(datas,num_art))+
  geom_bar(stat= "identity")+
  ylab("Número de Artigos")+
  coord_flip()+
  theme_classic()


ggplotly(p1_artigos) |> 
  layout(plot_bgcolor  = "rgba(0, 0, 0, 0)",
         paper_bgcolor = "rgba(0, 0, 0, 0)",
         fig_bgcolor   = "rgba(0, 0, 0, 0)")

# Paricipação em Bancas  ----------------------------------------------------------------------


bancas_data <- data.frame(Tipo = c("TCC", "Dissertação", "Tese"), Numero = c(11,4, 6))
bancas_data$Tipo <- factor(bancas_data$Tipo, levels = c("TCC", "Dissertação", "Tese"))

p_bancas <- 
bancas_data |> 
  ggplot(aes(Tipo, Numero, fill = Tipo))+
  geom_bar(stat= "identity")+
  ylab("Número de Participações")+
  theme_classic()+
  scale_fill_manual(values = c("#49B265", "#1F5F5B", "#062315")) +
  geom_text(aes(label= Numero), vjust=1.6, color="white", size=8)+
  ylab(NULL)+
  xlab(NULL)+
  ggtitle("Número de Paticipações em Bancas (2017-2022)")+
  theme(axis.text.y=element_blank(),  #remove y axis labels
         axis.ticks.y=element_blank(),  #remove y axis ticks
        axis.ticks.x=element_blank(), 
        axis.line = element_blank(), 
        legend.position = "none",
        axis.text.x = element_text(size = 15),
        plot.title = element_text(hjust = 0.5, size = 18),
        panel.background = element_rect(fill = "transparent"), # bg of the panel
        plot.background = element_rect(fill = "transparent", color = NA), # bg of the plot
        panel.grid.major = element_blank(), # get rid of major grid
        panel.grid.minor = element_blank(), # get rid of minor grid
        legend.background = element_rect(fill = "transparent"), # get rid of legend bg
        legend.box.background = element_rect(fill = "transparent"), # get rid of legend panel bg
        legend.key = element_rect(fill = "transparent", colour = NA) # get rid of key legend fill, and of the surrounding
        ) 
  
ggsave(plot = p_bancas, file = "images/bancas.png", 
       type = "cairo-png",  bg = "transparent",
       width = 20, height = 15, units = "cm", dpi = 800)


### Livros

  