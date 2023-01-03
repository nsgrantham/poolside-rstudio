library(rsthemes)
library(rstudioapi)
library(glue)

theme_palette <- list(
  #bg_darker = "#26253c",
  #bg_dark = "#2d2d48",
  #bg = "#353454",
  #bg_light = "#3d3c60",
  #bg_lighter = "#4c4b78",
  bg_darker = "#1e1e30",
  bg_dark = "#25253c",
  bg = "#2d2d48",
  bg_light = "#353454",
  bg_lighter = "#3c3c60", 
  fg = "#f2f2f7",
  fg_alt = "#facbca",
  comment = "#5a5a90",
  black  = "#26253c",
  red    = "#f78db9",
  green  = "#d1f79c",
  yellow = "#f7d19c",
  blue   = "#8deef7",
  purple = "#929af7",
  pink   = "#ef92f7",
  white  = "#f2f2f7"
)

terminal_colors <- rstheme_terminal_colors(
  black = "$comment",
  black_bright = "$comment",
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
  cyan_bright = "$blue",
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
  ui_cursor = "transparentize($fg_alt, 0.5)",
  ui_invisible = "transparentize($comment, 0.5)",
  ui_margin_line = "transparentize($comment, 0.8)",
  ui_gutter_foreground = "transparentize($comment, 0.5)",
  ui_selection = "transparentize($fg_alt, 0.9)",
  ui_rstudio_background = "$bg_darker",
  ui_line_active = "lighten($rmd_chunk_background, 3%)",
  ui_rstudio_tabs_active_background = "$bg_lighter",
  ui_rstudio_tabs_inactive_background = "$bg_dark",
  code_string = "$green",
  code_function = "$blue",
  code_value = "$red",
  code_variable = "$yellow",
  code_message = "$purple",
  code_comment = "$comment",
  code_reserved = "$pink",
  code_operator = "$fg_alt",
  code_bracket = "$fg_alt",
  code_namespace = "$blue",
  code_other = "$blue",
  rmd_chunk_background = "lighten($bg, 3%)",
  rmd_heading_foreground = "$pink",
  rmd_heading_weight = "500",
  rmd_chunk_header = "$blue",
  rmd_href = "$yellow",
  rainbow_parentheses,
  terminal_colors
)

theme_other <- glue(
"

/* Extra CSS edits made from poolside.R in nsgrantham/poolside-rstudio */

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

/* Syntax highlighting of code in help docs */

.rstudio-themes-dark.editor_dark.ace_editor_theme .code-toolbar {
  background-color: {{ theme_palette$bg }};
  border: 2px solid {{ theme_palette$bg }};
}

.rstudio-themes-dark.editor_dark.ace_editor_theme pre, 
.rstudio-themes-dark.editor_dark.ace_editor_theme pre code {
  background-color: {{ theme_palette$bg }};
  color: {{ theme_palette$fg }};
}

.rstudio-themes-dark.editor_dark.ace_editor_theme .token {
  filter: brightness(1);
}

.token.comment,
.token.prolog,
.token.doctype,
.token.cdata {
  color: {{theme_palette$comment}};
}

.token.punctuation {
  color: {{theme_palette$fg_alt}};
}

.token.property,
.token.tag,
.token.number,
.token.constant,
.token.symbol,
.token.deleted {
  color: {{theme_palette$pink}};
}

.token.selector,
.token.attr-name,
.token.string,
.token.char,
.token.builtin,
.token.inserted {
  color: {{theme_palette$green}};
}

.token.operator,
.token.entity,
.token.url,
.language-css .token.string,
.style .token.string {
  color: {{theme_palette$fg_alt}};
}

.token.atrule,
.token.attr-value,
.token.boolean,
.token.keyword {
  color: {{theme_palette$purple}};
}

.token.function,
.token.class-name {
  color: {{theme_palette$red}};
}

.token.regex,
.token.important,
.token.variable {
  color: {{ theme_palette$yellow }};
}

/* Tooltip hover box on rlang::last_trace() */
.GND-IWGDLJ {
  background-color: {{ theme_palette$bg_darker }} !important;
  color: {{ theme_palette$fg }} !important;
  border-top: 1px solid {{ theme_palette$bg }};
}

/* Tooltip hover text '(click to run)' on rlang::last_trace() */
.GND-IWGDDK {
  color: {{ theme_palette$comment }};
}

/* Column filters in data table view */
.rstudio-themes-dark-grey .colFilter, 
.rstudio-themes-dark-grey .numValueBox {
  border-color: {{ theme_palette$bg_dark }};
  background: {{ theme_palette$bg_dark }};
}

/* Border of dropdown menus */
.rstudio-themes-dark-menus .menuPopupMiddleCenter, .rstudio-themes-dark-menus .themedPopupPanel .popupMiddleCenter, .rstudio-themes-dark-menus .gwt-SuggestBoxPopup .suggestPopupMiddleCenter {
  border: solid 1px {{ theme_palette$bg_light }};
}

/* Horizontal seperators in dropdown menus */
.rstudio-themes-dark-menus .gwt-MenuItemSeparator .menuSeparatorInner {
  border-color: {{ theme_palette$bg_light }};
}

/* Border of Source vs Visual toggle button for Rmd docs */
.rstudio-themes-dark .GND-IWGDIV {
  border-color: {{ theme_palette$bg_light }};
}

/* Border of search boxes like 'Go to file/function' and 'Find in Topic' */
.rstudio-themes-dark-menus .search {
  border-color: {{ theme_palette$bg_dark }};
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

/* Toolbar when pane is fully collapsed */
.rstudio-themes-flat .rstudio-themes-dark-grey .rstheme_center {
  background: {{theme_palette$bg_dark}} !important;
}

/* Warning message at bottom of RStudio when license is expiring */
.GLAQNQDDC4 {
  color: black;
}

/* R Session Aborted popup */
.GLAQNQDDC5 {
  color: black;
}

.GLAQNQDDO4 {
  color: black;
}

/* 'The object no longer exists' error modal */
#errorWrapper {
  color: black;
}

/* Buttons for Next, Prev, All in search panel at top of editor */
.rstudio-themes-dark .GND-IWGDL1, .rstudio-themes-dark .GND-IWGDM1 {
  color: {{ theme_palette$fg }};
  background-color: {{ theme_palette$bg_light }};
}

", .open = "{{", .close = "}}")

write(theme_other, file = theme_path, append = TRUE)

addTheme(theme_path, apply = TRUE, force = TRUE)

