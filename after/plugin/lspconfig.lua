local status, nvim_lsp = pcall(require, 'lspconfig')
if (not status) then
  print("Lspconfig not found")
  return
end

local protocol = require('vim.lsp.protocol')

local on_attach = function(client, buff)
  vim.api.nvim_buf_set_option(buff, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

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
	vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
	vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
	vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
	vim.keymap.set('n', '<space>f', function() vim.lsp.buf.formatting { async = true  } end, bufopts)
end

local lsp_flags = {
	debounce_text_changes = 150
}

-- TODO: エラーが発生するのとコンプリーション効かない
-- local cmp = require('cmp')

-- cmp.setup({
--   snippet = {
--     expand = function(args)
--       vim.fn["vsnip#anonymous"](args.body)
--     end,
--   },
--   window = { },
--   mapping = cmp.mapping.preset.insert({
--     ['<C-b>'] = cmp.mapping.scroll_docs(-4),
--     ['<C-f>'] = cmp.mapping.scroll_docs(4),
--     ['<C-Space>'] = cmp.mapping.complete(),
--     ['<C-e>'] = cmp.mapping.abort(),
--     ['<CR>'] = cmp.mapping.confirm({
--       select = true
--     }),
--     sources = cmp.config.sources({
--       { name = 'nvim_lsp' },
--       { name = 'vsnip' },
--       { name = 'buffer' },
--     })
--   })
-- })

nvim_lsp.rust_analyzer.setup {
  on_attach = on_attach,
  flags = lsp_flags,
  settings = {
    ['rust-analyzer'] = {}
  }
}

