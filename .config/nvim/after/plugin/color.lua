require('rose-pine').setup({
    disable_background = true
})

function ColorMyPencils(color) 
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

    vim.cmd[[highlight ColorColumn ctermbg=300 guibg=gray]]
    vim.cmd[[highlight SpellBad ctermbg=255 guibg=red]]
end

ColorMyPencils()
