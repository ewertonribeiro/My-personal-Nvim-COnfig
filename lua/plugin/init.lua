--Packer
require("plugin.packer.main")
--UFo
require('plugin.ufo')
--Lsp
require("plugin.lsp")
--MASON
require("mason").setup()
require("mason-lspconfig").setup()
--Null Ls
require("plugin.null_ls")
require("plugin.null_ls.prettier")
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
--windline
-- require('wlsample.airline_anim')
--Signature
-- require("plugin.signature")
--Trouble
require("plugin.trouble.init")
--Nvim cmp
require("plugin.cmp")
--Telescope
require("plugin.telescope")
---Notify
require("notify").setup({
    background_colour = "#000000",
    my_cool_setting = true,
    timeout = 200,
    minimum_width = 30,
    top_down = false,
})
--CursorHoldFix
vim.g.cursorhold_updatetime = 100
--LightBulb
require("plugin.lightbulb")
--Go To Preview
require("plugin.gotopreview")
--Colorizer
require('colorizer').setup()
--TreeSiter
require 'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
    },
}
--Terminal
require('plugin.toggleterm')
---Surround
require("plugin.surround")
--Noice
-- require("plugin.noice")
