library(rsthemes)
library(rstudioapi)
library(glue)

theme_palette <- list(
  bg_darker = "#2B2A44",
  bg_dark = "#302E4B",
  bg = "#353454",
  bg_light = "#474670",
  bg_lighter = "#9291bb",
  fg = "#F2EDED",
  fg_alt = "#F7CBCA",
  comment = "#7877ab",
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
  blue = "$purple",
  blue_bright = "$purple",
  magenta = "$pink",
  magenta_bright = "$pink",
  cyan = "$blue",
  cyan_bright = "blue",
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
  ui_background = "$bg",
  ui_foreground = "$fg",
  ui_cursor = "$bg_lighter",
  ui_invisible = "transparentize($comment, 0.5)",
  ui_margin_line = "transparentize($comment, 0.5)",
  ui_gutter_foreground = "transparentize($comment, 0.3)",
  ui_selection = "lighten($rmd_chunk_background, 5%)",
  ui_rstudio_background = "$bg_darker",
  ui_line_active = "transparentize($rmd_chunk_background, 0.4)",
  ui_rstudio_tabs_active_background = "$bg_light",
  ui_rstudio_tabs_inactive_background = "$bg_dark",
  code_string = "$green",
  code_function = "$blue",
  code_value = "$pink",
  code_variable =  "$yellow",
  code_message = "$purple",
  code_comment = "$comment",
  code_reserved = "$red",
  code_operator = "$fg_alt",
  code_bracket = "$fg_alt",
  code_namespace = "$blue",
  code_other = "$blue",
  rmd_chunk_background = "lighten($bg, 5%)",
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
  border-color: {{theme_palette$bg}};
}

.rstudio-themes-flat > .rstudio-themes-dark .gwt-SplitLayoutPanel td {
  border-color: {{theme_palette$bg}} !important;
}

/* Top border of editor, bottom border of navbar */
.rstudio-themes-dark .rstheme_toolbarWrapper,
.rstudio-themes-dark .rstheme_secondaryToolbar {
  border-color: {{theme_palette$bg}} !important;
  border-radius: 0 !important;
}

/* Bottom border of editor */
.rstudio-themes-dark .rstudio-themes-background {
  border-top-color: {{theme_palette$bg}} !important;
  border-bottom-color: {{theme_palette$bg}} !important;
  border-radius: 0 !important;
}

/* Bottom border of tabs */
.rstudio-themes-dark .gwt-TabLayoutPanelTabs,
.rstudio-themes-dark .windowframe,
.rstudio-themes-dark :-webkit-any(.rstheme_multiPodUtilityTabArea, .GD15MCFCCS, .GJQ3LUQCCS) {
  border-color: {{theme_palette$bg}} !important;
}

/* Lines between tabs */
.rstudio-themes-dark .gwt-TabLayoutPanelTab:not(.gwt-TabLayoutPanelTab-selected) .rstheme_tabLayoutCenter,
.rstudio-themes-dark .rstheme_minimizedWindowObject .rstheme_center {
  border-color: {{theme_palette$bg}} !important;
  border-right: 1px solid {{theme_palette$bg}} !important;
  border-radius: 0;
}

/* Active tab */
.rstudio-themes-dark .gwt-TabLayoutPanelTab.gwt-TabLayoutPanelTab-selected .rstheme_tabLayoutCenter {
  border-color: {{theme_palette$bg}} !important;
}

", .open = "{{", .close = "}}")

write(theme_other, file = theme_path, append = TRUE)

addTheme(theme_path, apply = TRUE, force = TRUE)

