local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Themes
  -- use {
  --   'svrana/neosolarized.nvim',
  --   -- 'Everblush/everblush.nvim', as = 'everblush',
  --   requires = { 'tjdevries/colorbuddy.nvim' }
  -- } 
  -- use 'Mofiqul/vscode.nvim'
  use { "ellisonleao/gruvbox.nvim" }

  use 'hoob3rt/lualine.nvim' -- StatusLine
  use 'nvim-lua/plenary.nvim' -- 
  use 'onsails/lspkind-nvim' -- VsCode like pictograms
	use 'ryanoasis/vim-devicons'

  -- Lspconfig
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig'
  use 'glepnir/lspsaga.nvim'
  use 'L3MON4D3/LuaSnip'
  -- use 'mhartington/formatter.nvim'
  use 'jose-elias-alvarez/null-ls.nvim'

  -- Coc.nvim
  -- use { 'neoclide/coc.nvim', branch = 'release' }

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
  use 'airblade/vim-gitgutter'
  use 'akinsho/git-conflict.nvim'
  use 'sindrets/diffview.nvim'
  use 'TimUntersberger/neogit'
  use 'tpope/vim-fugitive'

  -- NOTE: Flutter(currently not used in development)
  -- use {'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim'}
  -- use 'Neevash/awesome-flutter-snippets'

  -- Testing now...
	use 'tpope/vim-commentary' -- Comment
	use 'tpope/vim-surround' -- Surround
	use 'tpope/vim-repeat' -- Repeat Commands
	use 'simeji/winresizer' -- Resizer (is it needed?)
	use 'junegunn/vim-easy-align' -- Alignment
	use 'scrooloose/nerdtree' -- File Browser (consider using `neo-tree`)
  use {
    'folke/todo-comments.nvim',
    requires = "nvim-lua/plenary.nvim", 
  }
  use 'tpope/vim-endwise'

  -- Tree-sitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  -- TODO:
  -- Vim-repeat
  -- NerdTree
  -- Markdown/OpenBrowser
end)
