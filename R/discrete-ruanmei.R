#' RuanMei Color Palette
pal_RuanMei <- function(palette = c("default"), alpha = 1) {
  palette <- match.arg(palette)

  if (alpha > 1L || alpha <= 0L) stop("alpha must be in (0, 1]")

  raw_cols <- ggStarRail_db$"RuanMei"[[palette]]
  raw_cols_rgb <- col2rgb(raw_cols)
  alpha_cols <- rgb(
    raw_cols_rgb[1L, ], raw_cols_rgb[2L, ], raw_cols_rgb[3L, ],
    alpha = alpha * 255L, names = names(raw_cols),
    maxColorValue = 255L
  )

  manual_pal(unname(alpha_cols))
}

scale_color_RuanMei <- function(palette = c("default"), alpha = 1, ...) {
  palette <- match.arg(palette)
  if (is_ggplot2_350()) {
    discrete_scale("colour", palette = pal_RuanMei(palette, alpha), ...)
  } else {
    discrete_scale("colour", scale_name = "RuanMei", palette = pal_RuanMei(palette, alpha), ...)
  }
}

scale_colour_RuanMei <- scale_color_RuanMei

scale_fill_RuanMei <- function(palette = c("default"), alpha = 1, ...) {
  palette <- match.arg(palette)
  if (is_ggplot2_350()) {
    discrete_scale("fill", palette = pal_RuanMei(palette, alpha), ...)
  } else {
    discrete_scale("fill", scale_name = "RuanMei", palette = pal_RuanMei(palette, alpha), ...)
  }
}
