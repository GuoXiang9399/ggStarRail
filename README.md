# ggStarRail

a collection of StarRail-styled color schemes.

## Installation

You can install ggStarRail on GitHub:

``` r
remotes::install_github("GuoXiang9399/ggStarRail")
```
## Gallery

``` r 
#loading package
  library(ggplot2)
  library(ggStarRail)
  library(scales)
  library(cowplot)
#data
  data("iris")
#plot
  p1 <- ggplot(iris) +
    geom_point(aes(x = Sepal.Width, y = Sepal.Length, colour = Species), 
      alpha = 0.7) +
      theme_bw()
  p2 <- ggplot(iris)+
    geom_boxplot(aes(x = Species, y = Sepal.Length, fill = Species))+
      theme_bw()
```

### 黄泉 Acheron 

<img src="figures/Acheron.png" width="100%" style="display: block; margin: auto;" />

``` r 
  plot_grid(
    p1+scale_color_Acheron(),
    p2+scale_fill_Acheron())

```

<img src="figures/Acheron_Plot.png" width="100%" style="display: block; margin: auto;" />

### 银枝 Argenti

<img src="figures/Argenti.png" width="100%" style="display: block; margin: auto;" />

### 克拉拉 Clara

<img src="figures/Clara.png" width="100%" style="display: block; margin: auto;" />

``` r 
  plot_grid(
    p1+scale_color_Clara(),
    p2+scale_fill_Clara())

```

### 真理医生 Dr. Ration

<img src="figures/DrRatio.png" width="100%" style="display: block; margin: auto;" />


### 霍霍 Huohuo

<img src="figures/Huohuo.png" width="100%" style="display: block; margin: auto;" />

### 丹恒·饮月 Dan Heng·Imbibitor Lunae

<img src="figures/ImbibitorLunae.png" width="100%" style="display: block; margin: auto;" />


``` r 
  plot_grid(
    p1+scale_color_ImbibitorLunae(),
    p2+scale_fill_ImbibitorLunae())

```

### 镜流 Jingliu

<img src="figures/Jingliu.png" width="100%" style="display: block; margin: auto;" />


``` r 
  plot_grid(
    p1+scale_color_Jingliu(),
    p2+scale_fill_Jingliu())

```

### 阮梅 Ruan Mei 

<img src="figures/RuanMei.png" width="100%" style="display: block; margin: auto;" />

``` r 
  plot_grid(
    p1+scale_color_RuanMei(),
    p2+scale_fill_RuanMei())

```

<img src="figures/RuanMei_Plot.png" width="100%" style="display: block; margin: auto;" />


### 托帕 Topaz

<img src="figures/Topaz.png" width="100%" style="display: block; margin: auto;" />

``` r 
  plot_grid(
    p1+scale_color_Topaz(),
    p2+scale_fill_Topaz())

```

### 瓦尔特

<img src="figures/Welt.png" width="100%" style="display: block; margin: auto;" />

### 彦卿 Yanqing

<img src="figures/Yanqing.png" width="100%" style="display: block; margin: auto;" />




