vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>")

-- remove highlights after searching words
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single char without copying into the registry
keymap.set("n", "x", "_x")

-- increment and decrement numbers
keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

-- split windows
keymap.set("n", "|", "<C-w>v") -- vertically
keymap.set("n", "-", "<C-w>s") -- horizontally

-- vim-maximizer
keymap.set("n", "<leader>wm", ":MaximizerToggle<CR>")

-- file explorer
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<CR>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>")

-- file handler
keymap.set("n", "<leader>w", ":w<CR>")
keymap.set("n", "<leader>q", ":q<CR>")

-- bufferline
keymap.set("n", "<S-l>", "<cmd>BufferLineCycleNext<CR>")
keymap.set("n", "<S-h>", "<cmd>BufferLineCyclePrev<CR>")

-- notifications
keymap.set("n", "<leader>nh", function()
	require("noice").cmd("history")
end)
keymap.set("n", "<leader>nl", function()
	require("noice").cmd("last")
end)

-- toggleTerm
keymap.set("n", "<leader>t", "<cmd>ToggleTerm size=80 direction=vertical<CR>")
