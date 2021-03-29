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
  rainbow_parentheses
)

theme_other <- glue(
"
/* Manual CSS edits added from poolside.R */

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

.xtermColor0 {
  color: {{theme_palette$black}} !important;
}

.xtermBgColor0 {
  background-color: {{theme_palette$black}};
}

.xtermColor1 {
  color: {{theme_palette$red}} !important;
}

.xtermBgColor1 {
  background-color: {{theme_palette$red}};
}

.xtermColor2 {
  color: {{theme_palette$green}} !important;
}

.xtermBgColor2 {
  background-color: {{theme_palette$green}};
}

.xtermColor3 {
  color: {{theme_palette$yellow}} !important;
}

.xtermBgColor3 {
  background-color: {{theme_palette$yellow}};
}

.xtermColor4 {
  color: {{theme_palette$blue}} !important;
}

.xtermBgColor4 {
  background-color: {{theme_palette$blue}};
}

.xtermColor5 {
  color: {{theme_palette$purple}} !important;
}

.xtermBgColor5 {
  background-color: {{theme_palette$purple}};
}

.xtermColor6 {
  color: {{theme_palette$pink}} !important;
}

.xtermBgColor6 {
  background-color: {{theme_palette$pink}};
}

.xtermColor7 {
  color: {{theme_palette$white}} !important;
}

.xtermBgColor7 {
  background-color: {{theme_palette$white}};
}

.xtermColor8 {
  color: {{theme_palette$black}} !important;
}

.xtermBgColor8 {
  background-color: {{theme_palette$black}};
}

.xtermColor9 {
  color: {{theme_palette$red}} !important;
}

.xtermBgColor9 {
  background-color: {{theme_palette$red}};
}

.xtermColor10 {
  color: {{theme_palette$green}} !important;
}

.xtermBgColor10 {
  background-color: {{theme_palette$green}};
}

.xtermColor11 {
  color: {{theme_palette$yellow}} !important;
}

.xtermBgColor11 {
  background-color: {{theme_palette$yellow}};
}

.xtermColor12 {
  color: {{theme_palette$blue}} !important;
}

.xtermBgColor12 {
  background-color: {{theme_palette$blue}};
}

.xtermColor13 {
  color: {{theme_palette$purple}} !important;
}

.xtermBgColor13 {
  background-color: {{theme_palette$purple}};
}

.xtermColor14 {
  color: {{theme_palette$pink}} !important;
}

.xtermBgColor14 {
  background-color: {{theme_palette$pink}};
}

.xtermColor15 {
  color: {{theme_palette$white}} !important;
}

.xtermBgColor15 {
  background-color: {{theme_palette$white}};
}

", .open = "{{", .close = "}}")

write(theme_other, file = theme_path, append = TRUE)

addTheme(theme_path, apply = TRUE, force = TRUE)
