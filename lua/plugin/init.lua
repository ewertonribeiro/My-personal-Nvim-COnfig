--Packer
require("plugin.packer.main")
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
-- require("plugin.lualine")
--windline
require('wlsample.evil_line')
--Lsp
require("plugin.lsp")
--MASON
require("mason").setup()
require("mason-lspconfig").setup()
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
--Terminal
require('plugin.toggleterm')
--UFo
require('plugin.ufo')



---Virtual Type
-- require'nvim_lsp'.ocamllsp.setup{
--     on_attach=require'virtualtypes'.on_attach
-- }

--Shade 
require'shade'.setup({
  overlay_opacity = 50,
  opacity_step = 1,
  keys = {
    brightness_up    = '<C-Up>',
    brightness_down  = '<C-Down>',
    toggle           = '<Leader>s',
  }
})

