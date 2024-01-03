local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

-- Searching files in only ".git"
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

-- Search files for specific word/phrase.
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
