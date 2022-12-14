local vi_mode = require "feline.providers.vi_mode"

local LEFT = 1
local RIGHT = 2

-- vi mode color configuration
local MODE_COLORS = {
  ["NORMAL"] = "skyblue",
  ["COMMAND"] = "skyblue",
  ["INSERT"] = "red",
  ["REPLACE"] = "red",
  ["LINES"] = "violet",
  ["VISUAL"] = "violet",
  ["OP"] = "yellow",
  ["BLOCK"] = "yellow",
  ["V-REPLACE"] = "yellow",
  ["ENTER"] = "yellow",
  ["MORE"] = "yellow",
  ["SELECT"] = "yellow",
  ["SHELL"] = "yellow",
  ["TERM"] = "yellow",
  ["NONE"] = "yellow",
}

local SPACEDUCK = {
  -- fg = '#ebdbb2',
  fg = "#30365f",
  bg = "#0f111b",
  black = "#0f111b",
  skyblue = "#00a3cc",
  cyan = "#00a3cc",
  green = "#5ccc96",
  oceanblue = "#076678",
  blue = "#458588",
  magenta = "#ce6f8f",
  orange = "#e39400",
  red = "#e33400",
  violet = "#b3a1e6",
  white = "#30365f",
  -- white = '#ebdbb2',
  yellow = "#fabd2f",
}

--- get the current buffer's file name, defaults to '[no name]'
local function get_filename()
  local filename = vim.api.nvim_buf_get_name(0)
  local filetype = vim.bo.filetype

  if filename == "" then
    if filetype == "aerial" then
      filename = "Aerial"
    else
      filename = "I'm nameless"
    end
  else
    filename = vim.fn.fnamemodify(filename, ":~:.")
    if filename == "neo-tree filesystem [1]" then filename = "Neo Tree" end
    if filetype == "toggleterm" then filename = 'type "exit" to quit' end
  end
  -- this is some vim magic to remove the current working directory path
  -- from the absilute path of the filename in order to make the filename
  -- relative to the current working directory
  -- return vim.fn.fnamemodify(filename, ':~:.')
  return filename
end

--- get the current buffer's file type, defaults to '[not type]'
local function get_filetype()
  local filetype = vim.bo.filetype
  if filetype == "" then filetype = "[no type]" end
  return filetype:lower()
end

--- wrap a string with whitespaces
local function wrap(string) return " " .. string .. " " end

--- wrap a string with whitespaces and add a '' on the left,
-- use on left section components for a nice  transition
local function wrap_left(string) return " " .. string .. " " end

--- wrap a string with whitespaces and add a '' on the right,
-- use on left section components for a nice  transition
local function wrap_right(string) return " " .. string .. " " end

--- decorate a provider with a wrapper function
-- the provider must conform to signature: (component, opts) -> string
-- the wrapper must conform to the signature: (string) -> string
local function wrapped_provider(provider, wrapper)
  return function(component, opts) return wrapper(provider(component, opts)) end
end

--
-- 3. setup custom providers
--

--- provide the vim mode (NORMAL, INSERT, etc.)
local function provide_mode(component, opts) return vi_mode.get_vim_mode() end

--- provide the buffer's file name
local function provide_filename(component, opts) return get_filename() end

-- provide the buffer's file type
local function provide_filetype(component, opts) return get_filetype() end

--
-- 4. build the components
--

local components = {
  -- components when buffer is active
  active = {
    {}, -- left section
    {}, -- right section
  },
  -- components when buffer is inactive
  inactive = {
    {}, -- left section
    {}, -- right section
  },
}

-- insert the mode component at the beginning of the left section
table.insert(components.active[LEFT], {
  name = "mode",
  provider = wrapped_provider(provide_mode, wrap),
  right_sep = "",
  -- hl needs to be a local function to avoid calling get_mode_color
  -- before feline initiation
  hl = function()
    local text_color = "black"
    if vi_mode.get_vim_mode() == "INSERT" then text_color = "white" end
    return {
      fg = text_color,
      bg = vi_mode.get_mode_color(),
      style = "bold",
    }
  end,
})

-- insert the filename component after the mode component
table.insert(components.active[LEFT], {
  name = "filename",
  provider = wrapped_provider(provide_filename, wrap_left),
  right_sep = " ",
  hl = {
    bg = "white",
    fg = "skyblue",
  },
})

-- insert the filetype component before the linenumber component
table.insert(components.active[RIGHT], {
  name = "filetype",
  provider = wrapped_provider(provide_filetype, wrap_right),
  left_sep = " ",
  hl = {
    bg = "white",
    fg = "skyblue",
  },
})

-- insert the linenumber component at the end of the left right section
table.insert(components.active[RIGHT], {
  name = "gitBranch",
  provider = "git_branch",
  left_sep = "",
  right_sep = "block",
  icon = " ",
  hl = {
    bg = "green",
    fg = "black",
    style = "bold",
  },
})

-- INACTIVE SECTION
table.insert(components.inactive[LEFT], {
  name = "mode",
  provider = wrapped_provider(provide_mode, wrap),
  right_sep = "",
  -- hl needs to be a local function to avoid calling get_mode_color
  -- before feline initiation
  hl = function()
    local text_color = "black"
    if vi_mode.get_vim_mode() == "INSERT" then text_color = "white" end
    return {
      fg = text_color,
      bg = vi_mode.get_mode_color(),
      style = "bold",
    }
  end,
})

-- insert the inactive filename component at the beginning of the left section
table.insert(components.inactive[LEFT], {
  name = "filename_inactive",
  provider = wrapped_provider(provide_filename, wrap_left),
  right_sep = " ",
  hl = {
    bg = "white",
    fg = "skyblue",
  },
})

--
-- 5. run the feline setup
--

return {
  force_inactive = { filetypes = { "^neo%-tree$", "^NvimTree$", "^aerial$", "^toggleterm$" } },
  disable = { filetypes = { "^dashboard$", "^Outline$" } },
  theme = SPACEDUCK,
  components = components,
  vi_mode_colors = MODE_COLORS,
}
