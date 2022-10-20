local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lspconfig = require('lspconfig')

lspconfig.rust_analyzer.setup({
  capabilities = capabilities,
  settings = {
    ['rust-analyzer'] = {
      checkOnSave = {
        enable = true, -- TODO
        command = 'clippy',
        allFeatures = true, -- TODO
      }
    },
  },
})

lspconfig.tsserver.setup({
  capabilities = capabilities,
})

lspconfig.gopls.setup({
  capabilities = capabilities,
})

lspconfig.solargraph.setup({
  capabilities = capabilities,
})

lspconfig.ocamllsp.setup({
  capabilities = capabilities,
})

lspconfig.sumneko_lua.setup({
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }, -- ignore "Undefined global 'vim'" warnings
      },
      telemetry = {
        enable = false
      },
    },
  },
})

local function format_async()
  vim.lsp.buf.format({ async = true })
end

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
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', 'cq', vim.diagnostic.setqflist)

vim.keymap.set('n', '<M-l>', vim.lsp.buf.document_symbol) -- Lists all symbols in the current buffer in the quickfix window.
