local actions = require "telescope.actions"
return {
  file_ignore_patterns = { "node_modules", ".git" },
  pickers = {
    find_files = {
      hidden = true,
    },
  },
  defaults = {
    prompt_prefix = " ",
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        prompt_position = "top",
        preview_width = 0.6,
        results_width = 0.8,
      },
      vertical = {
        mirror = false,
      },
      width = 0.95,
      height = 0.90,
      preview_cutoff = 100,
    },
    mappings = {
      i = {
        ["<C-h>"] = actions.select_horizontal,
      },

      n = {
        ["<C-h>"] = actions.select_horizontal,
      },
    },
  },
}
