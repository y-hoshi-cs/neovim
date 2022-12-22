local keymap = vim.keymap

-- New Tab
-- keymap.set('n', 'te', ':tabedit<Return>', { silent = true })

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

-- FIXME: Toggle to default-mode in terminal-mode > not work.
-- keymap.set('', '<Esc>', '<C-\\><C-n>')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w><')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- NerdTree
-- FIXME: not working
keymap.set('n', 'nt', ":call NERDTree<CR>", { silent = true })

-- Definition for Coc
-- keymap.set('n', 'gv', ":vs<CR><Plug>(coc-type-definition)", { silent = true })
-- keymap.set('n', 'gs', ":sp<CR><Plug>(coc-type-definition)", { silent = true })
-- keymap.set('n', 'gi', "<Plug>(coc-implementation)",         { silent = true })
-- keymap.set('n', 'gf', "<Plug>(coc-references)",             { silent = true })
-- -- ref: https://github.com/neoclide/coc.nvim/issues/869 
-- keymap.set('n', 'gk', ":call CocAction('doHover')<Return>", { silent = true })
-- keymap.set('n', ',j', ":call CocCommand('prettier.formatFile')<CR>", { silent = true })
--
-- TODO: need keybinding for lsp-definition jump

-- EasyAlign
keymap.set('x', 'ga', "<Plug>(EasyAlign)", { silent = true })
keymap.set('n', 'ga', "<Plug>(EasyAlign)", { silent = true })

-- GitGutter
-- https://qiita.com/youichiro/items/b4748b3e96106d25c5bc
-- https://github.com/airblade/vim-gitgutter/blob/master/plugin/gitgutter.vim
keymap.set('n', '[h', "<Plug>(GitGutterPrevHunk)")
keymap.set('n', ']h', "<Plug>(GitGutterNextHunk)")
keymap.set('n', '>>', "<Plug>(GitGutterStageHunk)")
keymap.set('n', '<<', "<Plug>(GitGutterUndounk)")
keymap.set('n', 'th', "<Plug>(GitGutterLineHighlightsToggle)")
-- keymap.set('n', 'ph', "<Plug>(GutGutterPreviewHunk)")

-- GitConflict
keymap.set('n', 'co', "<Plug>(git-conflict-ours)")
keymap.set('n', 'ct', "<Plug>(git-conflict-theirs)")
keymap.set('n', 'cb', "<Plug>(git-conflict-both)")
keymap.set('n', 'c0', "<Plug>(git-conflict-none)")
keymap.set('n', '[x', "<Plug>(git-conflict-prev-conflict)")
keymap.set('n', ']x', "<Plug>(git-conflict-next-conflict)")
