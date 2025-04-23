require("mason").setup {
	ensure_binaries = {
		"rust-analyzer", 
		"clangd",
		"arduino-language-server"
	},
}

vim.lsp.config('rust_analyzer', {
  settings = {
    ['rust-analyzer'] = {},
  },
})

vim.lsp.enable('rust_analyzer')

vim.lsp.enable('clangd')

vim.lsp.enable('arduino_language_server')

vim.lsp.config('arduino_language_server', { 
	cmd = {
		"arduino-language-server",
		"-cli-config", "~/Library/.arduino15/arduino-cli.yaml",
	},

	on_attach = on_attach,
	--capabilities = capabilities,
})
