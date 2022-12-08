local keymap = vim.keymap

-- Do not yank with x
keymap.set('n', 'x', '"_x')

-- keymap.set('n', '+', '<C-a>')
-- keymap.set('n', '-', '<C-x>')

-- -- Delete a word  backwards
-- keymap.set('n', 'bw', 'vb"_d')
-- keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New Tab
keymap.set('n', 'te', ':tabedit<Return>', { silent = true })

-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })

-- Move Window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 's<left>', '<C-w>h')
keymap.set('', 's<up>', '<C-w>k')
keymap.set('', 's<down>', '<C-w>j')
keymap.set('', 's<right>', '<C-w>l')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Toggle to default-mode in terminal-mode
-- keymap.set('', '<Esc>', '<C-\><C-n>')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w><')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- Definition for Coc
-- keymap.set('n', 'gv', ":call CocAction('jumpDefinition', 'vsplit')", { silent = true })
-- keymap.set('n', 'gs', ":call CocAction('jumpDefinition', 'split')", { silent = true })
keymap.set('n', 'gv', ":vs<CR><Plug>(coc-type-definition)", { silent = true })
keymap.set('n', 'gs', ":sp<CR><Plug>(coc-type-definition)", { silent = true })
keymap.set('n', 'gi', "<Plug>(coc-implementation)", { silent = true })
keymap.set('n', 'gf', "<Plug>(coc-references)", { silent = true })
-- ref: https://github.com/neoclide/coc.nvim/issues/869 
keymap.set('n', 'gk', ":call CocAction('doHover')<Return>", { silent = true })

-- EasyAlign (TODO: errors)
keymap.set('x', 'ga', "<Plug>(EasyAlign)", { silent = true })
keymap.set('n', 'ga', "<Plug>(EasyAlign)", { silent = true })
