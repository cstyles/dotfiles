local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lspconfig = require('lspconfig')

lspconfig.rust_analyzer.setup({
  capabilities = capabilities,
  settings = {
    ['rust-analyzer'] = {
      cmd = "~/.cargo/bin/rust-analyzer",
      checkOnSave = {
        enable = true, -- TODO
        command = 'clippy',
        allFeatures = false, -- TODO
      },
    },
  },
})

lspconfig.ts_ls.setup({
  capabilities = capabilities,
})

lspconfig.gopls.setup({
  capabilities = capabilities,
})

lspconfig.ruby_lsp.setup({
  capabilities = capabilities,
})

lspconfig.ocamllsp.setup({
  capabilities = capabilities,
  formattingProvider = "ocamlformat",
})

lspconfig.sourcekit.setup{}

lspconfig.serve_d.setup({
  capabilities = capabilities,
  cmd = {"/Users/cstyles/dev/serve-d/serve-d"},
})

lspconfig.hls.setup({
  capabilities = capabilities,
  single_file_support = true,
})

lspconfig.metals.setup({
  capabilities = capabilities,
})

lspconfig.clojure_lsp.setup({
  capabilities = capabilities,
})

lspconfig.dartls.setup{
  capabilities = capabilities,
}

lspconfig.pyright.setup{
  capabilities = capabilities,
}

lspconfig.zls.setup{
  capabilities = capabilities,
}

lspconfig.lua_ls.setup{}

local function format_async()
  vim.lsp.buf.format({ async = true })
end

-- TODO: only map these after `LspAttach`
vim.keymap.set('n', 'ga', vim.lsp.buf.code_action)
vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition)
vim.keymap.set('n', 'gh', vim.lsp.buf.hover)
-- vim.keymap.set('n', 'gi', vim.lsp.buf.implementation)
-- vim.keymap.set('n', 'gi', vim.lsp.buf.incoming_calls)
-- vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help)
-- vim.keymap.set('n', '<Leader>cr', vim.lsp.buf.rename)
vim.keymap.set('n', 'go', vim.lsp.buf.rename)
vim.keymap.set('n', '<Leader>F', format_async)
vim.keymap.set('n', 'gr', vim.lsp.buf.references)
-- vim.keymap.set('n', 'ge', vim.diagnostic.open_float)
vim.keymap.set('n', 'cq', vim.diagnostic.setqflist)
vim.keymap.set('n', 'gw', vim.diagnostic.open_float) -- ???

vim.keymap.set('n', '<M-l>', vim.lsp.buf.document_symbol) -- Lists all symbols in the current buffer in the quickfix window.

vim.diagnostic.enable()
vim.diagnostic.config({
  virtual_text = true,
  wrap = true
})
