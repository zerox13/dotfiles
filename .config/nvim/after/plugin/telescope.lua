local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- Git things
vim.keymap.set('n', '<leader>gc', builtin.git_commits, {})
vim.keymap.set('n', '<leader>gs', builtin.git_status, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})

-- Telescope general things
vim.keymap.set('n', '<leader>cs', builtin.colorscheme, {})
vim.keymap.set('n', '<leader>man', builtin.man_pages, {})
vim.keymap.set('n', '<leader>ms', builtin.marks, {})
