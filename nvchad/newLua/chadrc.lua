---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "highlights"

M.ui = {
  theme = "sweetpastel",
  theme_toggle = { "blossom_light", "sweetpastel" },

  transparency = true,
  hl_override = highlights.override,
  hl_add = highlights.add,

  nvdash = {
    load_on_startup = true,

    header = {
      "▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌",
      "▐ ██████   █████               █████████  █████                    █████▌",
      "▐░░██████ ░░███               ███░░░░░███░░███                    ░░███ ▌",
      "▐ ░███░███ ░███  █████ █████ ███     ░░░  ░███████    ██████    ███████ ▌",
      "▐ ░███░░███░███ ░░███ ░░███ ░███          ░███░░███  ░░░░░███  ███░░███ ▌",
      "▐ ░███ ░░██████  ░███  ░███ ░███          ░███ ░███   ███████ ░███ ░███ ▌",
      "▐ ░███  ░░█████  ░░███ ███  ░░███     ███ ░███ ░███  ███░░███ ░███ ░███ ▌",
      "▐ █████  ░░█████  ░░█████    ░░█████████  ████ █████░░████████░░████████▌",
      "▐░░░░░    ░░░░░    ░░░░░      ░░░░░░░░░  ░░░░ ░░░░░  ░░░░░░░░  ░░░░░░░░ ▌",
      "▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌",
    },
  }
}

M.plugins = "plugins"

-- check core.mappings for table structure
M.mappings = require "mappings"


return M
