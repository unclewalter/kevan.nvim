require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = { 'pyright', 'ts_ls', 'rust_analyzer' },
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

local on_attach = function(client, bufnr)
  local opts = { buffer = bufnr, noremap = true, silent = true }
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
  if client.server_capabilities.inlayHintProvider then
	  vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
  end
end

vim.lsp.config('*', {
  capabilities = capabilities,
  on_attach = on_attach,
})

-- farkin' cheeky bugger
vim.diagnostic.config({
  float = {
    focusable = false,  -- Can't accidentally enter it
    border = "rounded",
  },
})

-- Auto-enable everything Mason installed
local installed_servers = require('mason-lspconfig').get_installed_servers()
for _, server in ipairs(installed_servers) do
  vim.lsp.enable(server)
end
