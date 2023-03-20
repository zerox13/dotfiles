-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- OR setup with some options
require("nvim-tree").setup({
    sort_by = "case_sensitive",
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
})

vim.keymap.set('n', '<leader>tt', vim.cmd.NvimTreeToggle, {})
vim.keymap.set('n', '<leader>tf', vim.cmd.NvimTreeFocus, {})
vim.keymap.set('n', '<leader>tc', vim.cmd.NvimTreeCollapse, {})
