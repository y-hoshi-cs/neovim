vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.termguicolors = true
vim.opt.winblend = 0
vim.opt.wildoptions = 'pum'
vim.opt.pumblend = 5
vim.opt.background = 'dark'

-- TODO: Not work?
vim.cmd([[highlight GitGutterAdd    ctermfg=blue]])
vim.cmd([[highlight GitGutterChange ctermfg=yellow]])
vim.cmd([[highlight GitGutterDelete ctermfg=red]])
