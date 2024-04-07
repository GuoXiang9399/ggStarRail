#' ImbibitorLunae Color Palette
pal_ImbibitorLunae <- function(palette = c("default"), alpha = 1) {
  palette <- match.arg(palette)

  if (alpha > 1L || alpha <= 0L) stop("alpha must be in (0, 1]")

  raw_cols <- ggStarRail_db$"ImbibitorLunae"[[palette]]
  raw_cols_rgb <- col2rgb(raw_cols)
  alpha_cols <- rgb(
    raw_cols_rgb[1L, ], raw_cols_rgb[2L, ], raw_cols_rgb[3L, ],
    alpha = alpha * 255L, names = names(raw_cols),
    maxColorValue = 255L
  )

  manual_pal(unname(alpha_cols))
}

scale_color_ImbibitorLunae <- function(palette = c("default"), alpha = 1, ...) {
  palette <- match.arg(palette)
  if (is_ggplot2_350()) {
    discrete_scale("colour", palette = pal_ImbibitorLunae(palette, alpha), ...)
  } else {
    discrete_scale("colour", scale_name = "ImbibitorLunae", palette = pal_ImbibitorLunae(palette, alpha), ...)
  }
}

scale_colour_ImbibitorLunae <- scale_color_ImbibitorLunae

scale_fill_ImbibitorLunae <- function(palette = c("default"), alpha = 1, ...) {
  palette <- match.arg(palette)
  if (is_ggplot2_350()) {
    discrete_scale("fill", palette = pal_ImbibitorLunae(palette, alpha), ...)
  } else {
    discrete_scale("fill", scale_name = "ImbibitorLunae", palette = pal_ImbibitorLunae(palette, alpha), ...)
  }
}
