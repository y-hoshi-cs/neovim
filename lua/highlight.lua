vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.termguicolors = true
vim.opt.winblend = 0
vim.opt.wildoptions = 'pum'
vim.opt.pumblend = 5
vim.opt.background = 'dark'

-- TODO: Not work?
vim.cmd([[highlight GitGutterAdd    guifg=#009900 ctermfg=2]])
vim.cmd([[highlight GitGutterChange guifg=#bbbb00 ctermfg=3]])
vim.cmd([[highlight GitGutterDelete guifg=#ff2222 ctermfg=1]])
