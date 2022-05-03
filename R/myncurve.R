#' @title My Normal Curve (Lab6)
#'
#' @param iter number of runs
#' @param mu mean
#' @param sigma standard deviation
#' @param a area
#'
#' @return A normal graph with the given area calculater
#' @export
#'
#' @examples
#' \dontrun{myncurve(mu=4,sigma=2,a=5)}
myncurve = function(mu, sigma, a){
  curve(dnorm(x, mean = mu, sd = sigma), xlim = c(mu-3*sigma, mu+3*sigma))
  xcurve = seq(-1000, a, length = 10000)
  ycurve = dnorm(xcurve, mu, sigma)
  polygon(c(-1000, xcurve, a), c(0, ycurve, 0), col = "Red")
  area = pnorm(a, mu, sigma)
  arear = round(area, 4)
  list(Area = area)
}
