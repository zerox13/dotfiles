vim.g.mapleader = " "

vim.keymap.set("i", "jk", "<esc>", {noremap=true})

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<TAB>", vim.cmd.bnext)
vim.keymap.set("n", "<S-TAB>", vim.cmd.bprevious)


-- kill the buffer
vim.keymap.set("n", "<leader>d", vim.cmd.bd)

-- The copy and paste shit 
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])


vim.keymap.set("n", "<leader>s", ":set spell! spelllang=en_us<CR>")
