require("config.lazy")

local set = vim.o

set.number = true
set.relativenumber = true
set.clipboard = "unnamed"

vim.keymap.set("n", "<leader>p", ":Telescope find_files<CR>")
