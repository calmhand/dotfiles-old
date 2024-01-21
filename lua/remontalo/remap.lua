vim.g.mapleader = " "

-- While in normal mode, pressing "leader pv", the explore window will open.
-- The "leader" in this case is "space."
vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeOpen)
vim.keymap.set("n", "<leader>pt", vim.cmd.NvimTreeToggle)
