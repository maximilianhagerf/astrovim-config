return {
  highlights = {
    buffer_selected = {
      italic = false,
      bold = false,
      fg = "#00a3cc"
    },
	  diagnostic_selected = { italic = false },
	  hint_selected = { italic = false },
	  pick_selected = { italic = false },
	  pick_visible = { italic = false },
	  pick = { italic = false },
    fill = { bg = "NONE"},
    background = {
      bg = "NONE"
    },
    tab = {
      fg = "NONE",
      bg = "NONE",
    },
    tab_close = {
      fg = "NONE",
      bg = "NONE"
    },
    close_button = {
      bg = "NONE"
    },
    close_button_selected = {
      fg = "#00a3cc"
    },
    separator_selected = {
      fg = "#0f111b",
      bg = "NONE"
    },
    separator_visible = {
      fg = "#0f111b",
      bg = "NONE"
    },
    separator = {
      fg = "#0f111b",
      bg = "NONE"
    },
    indicator_selected = {
      fg = "NONE",
      bg = "NONE"
    },
    offset_separator = {
      fg = "NONE",
      bg = "NONE",
    },
  },
  options = {
    offsets = {
      { filetype = "NvimTree", text = "", padding = 0 },
      { filetype = "neo-tree", text = "", padding = 0 },
      { filetype = "Outline", text = "", padding = 0 },
    },
    buffer_close_icon = "",
    modified_icon = "",
    close_icon = "",
    show_close_icon = false,
    left_trunc_marker = "",
    right_trunc_marker = "",
    max_name_length = 14,
    max_prefix_length = 13,
    tab_size = 20,
    show_tab_indicators = true,
    enforce_regular_tabs = false,
    view = "multiwindow",
    show_buffer_close_icons = true,
    -- separator_style = {" ", " "},
    separator_style = "slant",
    always_show_bufferline = false,
    diagnostics = false,
    -- hover = {
    --   enabled = true,
    --   delay = 200,
    --   reveal = {'close'}
    -- }
  },
}
