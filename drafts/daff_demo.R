library(gapminder)
library(daff)

gap <- head(gapminder)
gap2 <- gap
gap2$lifeExp[1] <- 40

gap_daff <- daff::diff_data(gap, gap2)
render_diff(gap_daff)
