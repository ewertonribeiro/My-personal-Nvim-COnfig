--Nvim Tree
require("plugin.nvimtree")
--Whick Key
require("plugin.whichkey")
--Git Signs
require("plugin.gitsigns")
--Bufferline
require("plugin.bufferline")
--Comment
require("plugin.comment")
--Alpha
require("plugin.alpha")
--lualine
require("plugin.lualine")
--Lsp
require("plugin.lsp")
--Null Ls
 require("plugin.null_ls")
--Signature
 -- require("plugin.signature")
--Lsp-Zero
-- require("plugin.lsp-zero")
--Trouble
require("plugin.trouble.init")
--Nvim cmp
require("plugin.cmp")
-- --Snip Run
-- require("plugin.sniprun")
--Packer
require("plugin.packer.main")
--Telescope
require("plugin.telescope")
---Notify
require("notify").setup({
background_colour = "#000000",
 my_cool_setting = true,
})
--CursorHoldFix
vim.g.cursorhold_updatetime = 100
--LightBulb
require("plugin.lightbulb")
--Go To Preview
require("plugin.gotopreview")
--Surround
-- require("plugin.surround")
--Colorizer
require('colorizer').setup()
--Color Picker
require("plugin.colorpicker")
--TreeSiter
require'nvim-treesitter.configs'.setup {
  highlight = {
enable = true,
},
}
-- Folder Collapse
-- Using ufo provider need remap `zR` and `zM`. If Neovim is 0.6.1, remap yourself
-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities.textDocument.foldingRange = {
--   dynamicRegistration = false,
--   lineFoldingOnly = true
-- }
-- local language_servers = {} -- like {'gopls', 'clangd'}
-- for _, ls in ipairs(language_servers) do
--   require('lspconfig')[ls].setup({
--     capabilities = capabilities,
--     other_fields = ...
--   })
-- end
--
-- require('ufo').setup()
-- vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
-- vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)
-- vim.o.foldcolumn = '1'
-- vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
-- vim.o.foldlevelstart = -1
-- vim.o.foldenable = true
--
