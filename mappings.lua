-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)

return {
  -- first key is the mode
  i = {
    -- ["jj"] = { "<Esc> l", desc = "Move line down" },
  },
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
    ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
    ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },
    ["<C-ö>"] = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", desc = "Open Terminal" },
    ["<leader><leader>r"] = { ":AstroReload<cr>", desc = "Reload config" },
    ["<leader><leader>s"] = { ":let @/ = \"\"<cr>", desc = "Clear search selection" },
    ["<leader><leader>f"] = { ":lua vim.lsp.buf.formatting_sync(nil, 10000)<cr>", desc = "Format Document" },
    ["å"] = { "%", desc = "Maps å to %" },
    ["ä"] = { "$", desc = "Maps ä to $" },
    ["ö"] = { "^", desc = "Maps ö to ^" },
    ["§"] = { ":", desc = "Maps § to :" },
    ["<leader>k"] = { "<cmd>m-2<cr>", desc = "Move line up" },
    ["<leader>j"] = { "<cmd>m+1<cr>", desc = "Move line down" },
  },
  v = {
    ["å"] = { "%", desc = "Maps å to %" },
    ["ä"] = { "$", desc = "Maps ä to $" },
    ["ö"] = { "^", desc = "Maps ö to ^" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
