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

```

:::
  
  ### Artigos|Qualis
  ::: {.fragment .fade-up}
```{r}
#| echo: false

# GMR A2 ... 2
# SUGAR TECH ...B1 ..1
# CIENCIA RURAL ... B1 1
# EUPHITYCA ... A2 1
# idesia Arica .. B1 1
# CIÊNCIAS AGRÁRIAS I
qualis_data <- data.frame(Qualis = c("A2", "B1"), Num = c(3,3))

```


### Livros

:::
  