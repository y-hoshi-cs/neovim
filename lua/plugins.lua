local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  } 
  use 'hoob3rt/lualine.nvim' -- StatusLine
  use 'nvim-lua/plenary.nvim' -- 
  use 'onsails/lspkind-nvim' -- VsCode like pictograms
	use 'ryanoasis/vim-devicons'

  -- Lspconfig
  use 'neovim/nvim-lspconfig'
  use 'glepnir/lspsaga.nvim'
  use 'L3MON4D3/LuaSnip'

  -- Coc.nvim
  use { 'neoclide/coc.nvim', branch = 'release' }

  -- Completions
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/vim-vsnip'

  -- AutoPairs
  use 'windwp/nvim-autopairs'
  -- use 'windwp/nvim-ts-autotag'

  -- Telescope
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'BurntSushi/ripgrep'

  -- Git
  use 'lewis6991/gitsigns.nvim'

  -- Flutter
  use {'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim'}
  use 'Neevash/awesome-flutter-snippets'

  -- Testing now...
	use 'tpope/vim-commentary' -- Comment
	use 'tpope/vim-surround' -- Surround
	use 'tpope/vim-repeat' -- Repeat Commands
	use 'simeji/winresizer' -- Resizer (is it needed?)
	use 'junegunn/vim-easy-align' -- Alignment
	use 'scrooloose/nerdtree' -- File Browser (consider using `neo-tree`)

  -- Tree-sitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  -- TODO:
  -- TreeSitter
  -- EasyAlign
  -- VimSurround
  -- VimCommentary
  -- Vim-repeat
  -- NerdTree
  -- Typescript
  -- Flutter
  -- Markdown/OpenBrowser
  -- GitGutter/Fugitive
  -- GitDiff
end)
