require("mason").setup {
	ensure_binaries = {
		"rust-analyzer", 
		"clangd",
		"arduino-language-server"
	},
}

require("auto-lsp").setup({
  ["arduino_language_server"] = {
	cmd = {
		"arduino-language-server",
		"-cli-config", "~/Library/.arduino15/arduino-cli.yaml",
	},

	on_attach = on_attach,
	capabilities = capabilities,
  },
})
