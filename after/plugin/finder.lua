local telescope = require('telescope')

telescope.setup {
	pickers = {
		find_files = { hidden = true }
	}
}
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.api.nvim_set_keymap('n', 'gr', '<cmd>Telescope lsp_references<CR>', {noremap = true, silent = true})

