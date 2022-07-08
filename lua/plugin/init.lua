--Cosmic UI
require('cosmic-ui').setup()
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
-- require("plugin.null_ls")
--Signature
-- require("plugin.signature")
--Lsp-Zero
-- require("plugin.lsp-zero")
--Trouble
require("plugin.trouble.init")
--Nvim cmp

--Snip Run
--require("plugin.sniprun")
--Packer
require("plugin.packer.main")
--Telescope
require("plugin.telescope")
---Notify
require("notify").setup({
    background_colour = "#000000",
    my_cool_setting = true,
})
