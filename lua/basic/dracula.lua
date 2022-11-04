local dracula = require("dracula")
-- {
--   none = "NONE",
--   bg = "#191622",
--   bg_dark = "#13111B",
--   bg_darker = "#15121E",
--   bg_light = "#201B2D",
--   bg_lighter = "#252131",
--   fg = "#E1E1E6",
--   comment = "#483C67",
--   selection = "#41414D",
--   cyan = "#78D1E1",
--   pink = "#FF79C6",
--   purple = "#988BC7",
--   orange = "#E89E64",
--   yellow = "#E7DE79",
--   green = "#67E480",
--   red = "#E96379",
--   git = { add = "#67E480", change = "#78D1E1", delete = "#ED4556", conflict = "#BB7A61" },
-- }
dracula.setup({
  -- customize dracula color palette
  colors = {
    bg = "#282A36",
    fg = "#F8F8F2",
    selection = "#44475A",
    comment = "#6272A4",
    red = "#FF5555",
    orange = "#FFB86C",
    yellow = "#F1FA8C",
    green = "#50fa7b",
    purple = "#BD93F9",
    cyan = "#8BE9FD",
    pink = "#FF79C6",
    bright_red = "#FF6E6E",
    bright_green = "#69FF94",
    bright_yellow = "#FFFFA5",
    bright_blue = "#D6ACFF",
    bright_magenta = "#FF92DF",
    bright_cyan = "#A4FFFF",
    bright_white = "#FFFFFF",
    menu = "#21222C",
    visual = "#3E4452",
    gutter_fg = "#4B5263",
    nontext = "#3B4048",
  },
  -- transparent_bg = true, -- default false
  -- lualine_bg_color = "#44475a", -- default nil
  italic_comment = true, -- default false
})
