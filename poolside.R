library(rsthemes)
library(rstudioapi)
library(glue)

theme_palette <- list(
  ui_background = "#353454",
  ui_foreground = "#F2EDED",
  black  = "#A3A3A3",
  red    = "#F8B3B1",
  green  = "#D7F4AB",
  yellow = "#FAD6A7",
  blue   = "#A3DFFA",
  purple = "#B1AFFA",
  pink   = "#DF9DFA",
  white  = "#F2EDED"
)

terminal_colors <- rstheme_terminal_colors(
  black = "$black",
  black_bright = "$black",
  red = "$red",
  red_bright = "$red",
  green = "$green",
  green_bright = "$green",
  yellow = "$yellow",
  yellow_bright = "$yellow",
  blue = "$blue",
  blue_bright = "$blue",
  magenta = "$purple",
  magenta_bright = "$purple",
  cyan = "$pink",
  cyan_bright = "$pink",
  white = "$white",
  white_bright = "$white"
)

rainbow_parentheses <- rstheme_rainbow_parentheses(
  ui_paren_0 = "$red",
  ui_paren_1 = "$yellow",
  ui_paren_2 = "$green",
  ui_paren_3 = "$blue",
  ui_paren_4 = "$purple",
  ui_paren_5 = "$pink",
  ui_paren_6 = "$white"
)

theme_path <- "poolside.rstheme"

rstheme(
  theme_name = "Poolside",
  theme_path = theme_path,
  theme_dark = TRUE,
  theme_apply = FALSE,
  theme_palette = theme_palette,
  ui_background = "$ui_background",
  ui_foreground = "$ui_foreground",
  ui_cursor = "$blue",
  ui_invisible = "lighten($ui_background, 15%)",
  ui_margin_line = "lighten($ui_background, 15%)",
  ui_gutter_foreground = "lighten($ui_background, 15%)",
  ui_selection = "lighten($rmd_chunk_background, 5%)",
  ui_rstudio_background = "darken($ui_background, 5%)",
  ui_line_active = "transparentize($rmd_chunk_background, 0.4)",
  code_string = "$green",
  code_function = "$blue",
  code_value = "$pink",
  code_variable =  "$yellow",
  code_message = "$purple",
  code_comment = "lighten($ui_background, 30%)",
  code_reserved = "$red",
  code_operator = "#F7CBCA",
  code_bracket = "#F7CBCA",
  code_namespace = "$blue",
  code_other = "$blue",
  rmd_chunk_background = "lighten($ui_background, 5%)",
  rmd_heading_foreground = "$pink",
  rmd_heading_weight = "500",
  rmd_chunk_header = "$blue",
  rmd_href = "$yellow",
  rainbow_parentheses,
  terminal_colors
)

theme_other <- glue(
"

/* Extra CSS edits made from poolside.R */

.rstudio-themes-flat
> .rstudio-themes-dark
:-webkit-any(.windowframe, .rstheme_minimizedWindowObject)
> div:last-child {
  border-radius: 0;
  border-color: {{theme_palette$ui_background}};
}

.rstudio-themes-flat > .rstudio-themes-dark .gwt-SplitLayoutPanel td {
  border-color: {{theme_palette$ui_background}} !important;
}

/* Top border of editor, bottom border of navbar */
.rstudio-themes-dark .rstheme_toolbarWrapper,
.rstudio-themes-dark .rstheme_secondaryToolbar {
  border-color: {{theme_palette$ui_background}} !important;
  border-radius: 0 !important;
}

/* Bottom border of editor */
.rstudio-themes-dark .rstudio-themes-background {
  border-top-color: {{theme_palette$ui_background}} !important;
  border-bottom-color: {{theme_palette$ui_background}} !important;
  border-radius: 0 !important;
}

/* Bottom border of tabs */
.rstudio-themes-dark .gwt-TabLayoutPanelTabs,
.rstudio-themes-dark .windowframe,
.rstudio-themes-dark :-webkit-any(.rstheme_multiPodUtilityTabArea, .GD15MCFCCS, .GJQ3LUQCCS) {
  border-color: {{theme_palette$ui_background}} !important;
}

/* Lines between tabs */
.rstudio-themes-dark .gwt-TabLayoutPanelTab:not(.gwt-TabLayoutPanelTab-selected) .rstheme_tabLayoutCenter,
.rstudio-themes-dark .rstheme_minimizedWindowObject .rstheme_center {
  border-color: {{theme_palette$ui_background}} !important;
  border-right: 1px solid {{theme_palette$ui_background}} !important;
  border-radius: 0;
}

/* Active tab */
.rstudio-themes-dark .gwt-TabLayoutPanelTab.gwt-TabLayoutPanelTab-selected .rstheme_tabLayoutCenter {
  border-color: {{theme_palette$ui_background}} !important;
}

", .open = "{{", .close = "}}")

write(theme_other, file = theme_path, append = TRUE)

addTheme(theme_path, apply = TRUE, force = TRUE)
