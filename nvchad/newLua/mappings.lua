local map = vim.keymap.set

-- format with conform
map("n", "<leader>fm", function()
  require("conform").format { lsp_fallback = true }
end, { desc = "Format Files" })

map("n", "<leader>tt", function()
  require("base46").toggle_theme()
end, { desc = "toggle NvChad theme"})

map("n", "<leader>ty", function()
  require("base46").toggle_transparency()
end, { desc = "toggle NvChad transparency"})

map({"n", "v"}, "<C-v>", '"+p', { desc = "Paste from OS clipboard"})
map("v", "<C-c>", '"+y', { desc = "Copy to OS clipboard"})

map("n", "J", "mzJ`z", { desc = "Join Lines, keep cursor in place"})

map("n", "nzzzv", "Next match and recenter")
map("n", "Nzzzv", "Previous match and recenter")

map("n", "Q", "<nop>", { desc = "Quiting with Cap 'Q' diabled"})

map({"v", "n"}, "<leader>d", '"_d', { desc = "delete without yanking"})
map("v", "<leader>p", '"_dP', { desc = "paste without yanking"})

-- fancy search and replace on word cursor is on
map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Search And Replace Word On Cursor"})

map("v", ">", ">gv", { desc = "indent"})
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move Highlighted Lines Up"})
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move Highlighted Lines Down"})

