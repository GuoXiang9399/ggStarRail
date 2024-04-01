#' ruanmei Color Palette
#'
#' Color palette from ruanmei.
#'
#' @param palette Palette type.
#' Currently there is one available option: \code{"default"}
#' (26-color palette).
#' @param alpha Transparency level, a real number in (0, 1].
#' See \code{alpha} in \code{\link[grDevices]{rgb}} for details.
#'
#' @export pal_ruanmei
#'
#' @importFrom grDevices col2rgb rgb
#' @importFrom scales manual_pal
#'
#' @examples
#' library("scales")
#' show_col(pal_ruanmei("default")(26))
#' show_col(pal_ruanmei("default", alpha = 0.6)(26))
pal_ruanmei <- function(palette = c("default"), alpha = 1) {
  palette <- match.arg(palette)

  if (alpha > 1L || alpha <= 0L) stop("alpha must be in (0, 1]")

  raw_cols <- ggStarRail_db$"ruanmei"[[palette]]
  raw_cols_rgb <- col2rgb(raw_cols)
  alpha_cols <- rgb(
    raw_cols_rgb[1L, ], raw_cols_rgb[2L, ], raw_cols_rgb[3L, ],
    alpha = alpha * 255L, names = names(raw_cols),
    maxColorValue = 255L
  )

  manual_pal(unname(alpha_cols))
}

#'
#' See \code{\link{pal_ruanmei}} for details.
#'
#' @inheritParams pal_ruanmei
#' @param ... additional parameters for \code{\link[ggplot2]{discrete_scale}}
#'
#' @export scale_color_ruanmei
#'
#' @importFrom ggplot2 discrete_scale
#'
#' @rdname scale_ruanmei
#'
#' @examples
#' library("ggplot2")
#' data("diamonds")
#'
#' ggplot(
#'   subset(diamonds, carat >= 2.2),
#'   aes(x = table, y = price, colour = cut)
#' ) +
#'   geom_point(alpha = 0.7) +
#'   geom_smooth(method = "loess", alpha = 0.1, size = 1, span = 1) +
#'   theme_bw() +
#'   scale_color_ruanmei()
#'
#' ggplot(
#'   subset(diamonds, carat > 2.2 & depth > 55 & depth < 70),
#'   aes(x = depth, fill = cut)
#' ) +
#'   geom_histogram(colour = "black", binwidth = 1, position = "dodge") +
#'   theme_bw() +
#'   scale_fill_ruanmei()
scale_color_ruanmei <- function(palette = c("default"), alpha = 1, ...) {
  palette <- match.arg(palette)
  if (is_ggplot2_350()) {
    discrete_scale("colour", palette = pal_ruanmei(palette, alpha), ...)
  } else {
    discrete_scale("colour", scale_name = "ruanmei", palette = pal_ruanmei(palette, alpha), ...)
  }
}

#' @export scale_colour_ruanmei
#' @rdname scale_ruanmei
scale_colour_ruanmei <- scale_color_ruanmei

#' @export scale_fill_ruanmei
#' @importFrom ggplot2 discrete_scale
#' @rdname scale_ruanmei
scale_fill_ruanmei <- function(palette = c("default"), alpha = 1, ...) {
  palette <- match.arg(palette)
  if (is_ggplot2_350()) {
    discrete_scale("fill", palette = pal_ruanmei(palette, alpha), ...)
  } else {
    discrete_scale("fill", scale_name = "ruanmei", palette = pal_ruanmei(palette, alpha), ...)
  }
}
