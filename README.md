## ggStarRail

a collection of StarRail-styled color schemes



<img src="figures/huangqian.png" width="100%" style="display: block; margin: auto;" />




``` r 
library(ggplot2)
library(ggStarRail)
library(scales)
library(cowplot)
  data("iris")

  p1 <- ggplot(iris) +
    geom_point(
      aes(x = Sepal.Width, y = Sepal.Length , colour = Species), alpha = 0.7) +
    theme_bw()

  p2 <- ggplot(iris)+
    geom_boxplot  (aes(x =  Species, y = Sepal.Length ,fill = Species)   )




  plot_grid(
    p1+scale_color_huangquan(),
    p2+scale_fill_huangquan())

```



