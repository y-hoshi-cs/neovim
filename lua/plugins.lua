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

  -- Telescope
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  -- Testing
	use 'tpope/vim-commentary' -- Comment
	use 'tpope/vim-surround' -- Surround
	use 'tpope/vim-repeat' -- Repeat Commands
	use 'simeji/winresizer' -- Resizer (is it needed?)
	use 'junegunn/vim-easy-align' -- Alignment
	use 'scrooloose/nerdtree' -- File Browser (consider using `neo-tree`)

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
