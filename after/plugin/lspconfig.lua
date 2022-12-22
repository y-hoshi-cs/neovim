local status, nvim_lsp = pcall(require, 'lspconfig')
if (not status) then
  print("Lspconfig not found")
  return
end

local protocol = require('vim.lsp.protocol')

local on_attach = function(client, buff)
  vim.api.nvim_buf_set_option(buff, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
    vim.api.nvim_command [[augroup END]]
  end

  local bufopts = {
    noremap = true,
    silent = true,
    buffer = buff,
  }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
	vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
	vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
	vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
	vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
	vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
	vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
	vim.keymap.set('n', '<space>wl', function()
		print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
	end, bufopts)
	vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
	vim.keymap.set('n', '<space>rn', vim.lsp.bufbugfix/KRA_validations.rename, bufopts)
	vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
	vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
	vim.keymap.set('n', '<C-f>', vim.lsp.buf.format, bufopts)
end

local lsp_flags = {
	debounce_text_changes = 150
}

local cmp = require('cmp')
local lspkind = require('lspkind')

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    -- ['<C-d>']     = cmp.mapping.scroll_docs(-4),
    -- ['<C-f>']     = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>']     = cmp.mapping.abort(),
    ['<CR>']      = cmp.mapping.confirm({
      behavior    = cmp.ConfirmBehavior.Replace,
      select      = true
    }),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'vsnip' },
    { name = 'buffer' },
  }),
  formatting = {
    format = lspkind.cmp_format({ with_text = false, maxwidth = 50 })
  },
  window = {
    completion    = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  }
})

-- NOTE: setting for not to select automatically from candidates
vim.cmd[[
  set completeopt=menuone,noinsert,noselect
  highlight! default link CmpItemKind CompItemMenuDefault
]]

require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = {
    'sumneko_lua',
    'tsserver',
    'eslint',
    'html',
    'cssls',
    'rust_analyzer',
    'intelephense',
  },
})
local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').update_capabilities(
  vim.lsp.protocol.make_client_capabilities()
)
require('mason-lspconfig').setup_handlers {
  function(server_name)
    lspconfig[server_name].setup {
      capabilities = capabilities,
    }
  end,
}

local null_ls = require('null-ls')
local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local completion = null_ls.builtins.completion

null_ls.setup({
  sources = {
    formatting.stylua,
    formatting.prettier.with({extra_args = {}}),
    formatting.black.with({ extra_args = { '--fast' }}),
    diagnostics.eslint,
    completion.spell,
  }
})

-- require('formatter').setup {
--   logging = true,
--   log_level = vim.log.levels.WARN,
--   filetype = {
--     lua = {
--       require('formatter.filetypes.lua').stylua,
--       function()
--       end
--     }
--   }
-- }
