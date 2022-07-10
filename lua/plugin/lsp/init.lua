local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("plugin.lsp.lsp-installer")
require("plugin.lsp.handlers").setup()
require("plugin.null_ls")
