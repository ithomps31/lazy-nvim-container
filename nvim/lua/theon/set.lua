-- File Type Specific Stuff
--autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
--autocmd FileType pug setlocal ts=2 sts=2 sw=2 expandtab
vim.api.nvim_create_autocmd('FileType', {
    pattern = 'yaml',
    callback = function()
	    vim.opt.tabstop = 2
	    vim.opt.softtabstop = 2
	    vim.opt.shiftwidth = 2
    end,
})

vim.api.nvim_create_autocmd('FileType', {
    pattern = 'pug',
    callback = function()
	    vim.opt.tabstop = 2
	    vim.opt.softtabstop = 2
	    vim.opt.shiftwidth = 2
    end,
})

vim.api.nvim_create_autocmd('FileType', {
    pattern = 'lua',
    callback = function()
	    vim.opt.tabstop = 2
	    vim.opt.softtabstop = 2
	    vim.opt.shiftwidth = 2
    end,
})

vim.api.nvim_create_autocmd('FileType', {
    pattern = 'css',
    callback = function()
	    vim.opt.tabstop = 2
	    vim.opt.softtabstop = 2
	    vim.opt.shiftwidth = 2
    end,
})

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

