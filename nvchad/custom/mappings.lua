---@type MappingsTable
local M = {}

M.general = {
  n = {
    -- [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
      },
    ["<leader>tt"] = {
      function()
        require("base46").toggle_theme()
      end,
      "toggle NvChad theme",
    },
    ["<leader>ty"] = {
      function()
        require("base46").toggle_transparency()
      end,
      "toggle NvChad theme",
    },
    ["<C-v>"] = { '"+p', "Paste from OS clipboard"},
    ["J"] = { "mzJ`z", "Join Lines, keep cursor in place"},

    -- big moves recenter line
    ["<C-d>"] = { "<C-d>zz", "Move down and recenter"},
    ["<C-u>"] = { "<C-u>zz", "Move down and recenter"},
    ["n"] = { "nzzzv", "Next match and recenter"},
    ["N"] = { "Nzzzv", "Previous match and recenter"},

    -- Option to delete/paste without yanking 
    ["<leader>d"] = { '"_d', "delete without yanking"},

    -- no accidently closing vim
    ["Q"] = { "<nop>", "Quiting with Cap 'Q' disabled"},

    -- fancy search and replace on word cursor is on
      ["<leader>s"] ={ [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], "Search And Replace Word On Cursor"},
  },
  v = {
    [">"] = { ">gv", "indent"},

    -- move selected lines up and down 
    ["<A-j>"] = {":m '>+1<CR>gv=gv", "Move Highlighed Lines Up"},
    ["<A-k>"] = {":m '<-2<CR>gv=gv", "Move Highlighed Lines Down"},

    -- Access to OS Clipboard
    ["<C-c>"] = { '"+y', "Paste from OS clipboard"},
    ["<C-v>"] = { '"+p', "Paste from OS clipboard"},

    -- Option to delete/paste without yanking 
    ["<leader>p"] = { '"_dP', "paste without yanking"},
    ["<leader>d"] = { '"_d', "delete without yanking"},
  },
}

-- more keybinds!

return M
