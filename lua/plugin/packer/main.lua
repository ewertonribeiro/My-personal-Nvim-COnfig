-- local noice_config = require("plugin.noice")
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end


-- Have packer use a popup window
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
    },
}


--Install My plugins Here
return packer.startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    --Themes
    -- use 'dracula/vim'
    use 'Mofiqul/dracula.nvim'
    use 'joshdick/onedark.vim'
    use 'olimorris/onedarkpro.nvim'
    use 'folke/tokyonight.nvim'
    use "ellisonleao/gruvbox.nvim"
    use 'getomni/neovim'
    use 'sainnhe/sonokai'
    use 'tanvirtin/monokai.nvim'
    use 'shaunsingh/nord.nvim'
    use {
        "catppuccin/nvim",
        as = "catppuccin",
        config = function()
            require("catppuccin").setup {
                flavour = "macchiato" -- mocha, macchiato, frappe, latte
            }
            vim.api.nvim_command "colorscheme catppuccin"
        end
    }
    --TreeSitter
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    --AutoPairs
    use 'jiangmiao/auto-pairs'
    --Plenary
    use 'nvim-lua/plenary.nvim'
    --Telecope
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-media-files.nvim'
    use 'nvim-telescope/telescope-github.nvim'
    use 'xiyaowong/telescope-emoji.nvim'
    use 'nvim-telescope/telescope-project.nvim'
    --Web Dev Icons
    use 'kyazdani42/nvim-web-devicons' -- optional, for file icons
    --Nvim Tree
    use 'kyazdani42/nvim-tree.lua'
    --Which Key
    use 'folke/which-key.nvim'
    --GitSigns
    use 'lewis6991/gitsigns.nvim'
    --Git Blame
    use 'f-person/git-blame.nvim'
    --Bufferline
    use { 'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons' }
    --Comment
    use 'numToStr/Comment.nvim'
    --Todo Comment
    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function()
            require("todo-comments").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }
    --Alpha Nvim
    use 'goolord/alpha-nvim'
    --lualine
    use 'nvim-lualine/lualine.nvim'
    --Togglterm
    use { 'akinsho/toggleterm.nvim', tag = '*' }
    --Popup
    use 'nvim-lua/popup.nvim'
    --Notify
    use 'rcarriga/nvim-notify'
    --Trouble
    use 'folke/trouble.nvim'

    --LPS INSTALLER
    use "williamboman/nvim-lsp-installer"
    --Lsp-Config
    use "neovim/nvim-lspconfig"
    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"
    --Null LS
    use 'jose-elias-alvarez/null-ls.nvim'
    ---Prettierd
    use 'MunifTanjim/prettier.nvim'
    --Nvim-Cmp
    use 'hrsh7th/nvim-cmp' -- The main one
    use 'hrsh7th/cmp-nvim-lsp' --Lsp plugin source
    use 'hrsh7th/cmp-buffer' --Buffer plugin source
    use 'hrsh7th/cmp-path' --Path plugin source
    use 'David-Kunz/cmp-npm' -- Npm Plugin Source
    use 'saadparwaiz1/cmp_luasnip' --LuaSnip Plugin source
    use 'hrsh7th/cmp-vsnip' --VS SNIP
    use 'hrsh7th/vim-vsnip' --VS SNIP
    use { 'tzachar/cmp-tabnine', run = './install.sh', requires = 'hrsh7th/nvim-cmp' } --Tabnine

    --Snippets
    use 'L3MON4D3/LuaSnip'
    use 'rafamadriz/friendly-snippets'
    --NVIM DAP
    use 'mfussenegger/nvim-dap'
    --LSP  SIGNATURE
    use 'ray-x/lsp_signature.nvim'
    --LazyGit
    use 'kdheepak/lazygit.nvim'

    --Nvim Light Bulb
    use {
        'kosayoda/nvim-lightbulb',
        requires = 'antoinemadec/FixCursorHold.nvim',
    }

    --Go To Previews
    use 'rmagatti/goto-preview'

    --Nvim Surround
    use 'kylechui/nvim-surround'

    --Colorizer
    use 'norcalli/nvim-colorizer.lua'
    --Collapse Folders
    use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' }

    --Editor config
    use 'gpanders/editorconfig.nvim'
    --Popup ui
    use 'hood/popui.nvim'
    use 'RishabhRD/popfix'
    vim.ui.select = require "popui.ui-overrider"
    vim.ui.input = require "popui.input-overrider"

    use "stevearc/dressing.nvim"
    --Noice
    use({
        "folke/noice.nvim",
        event = "VimEnter",
        config = function()
            require("noice").setup({})
        end,
        requires = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        }
    })

    --WINLINE
    use 'windwp/windline.nvim'
    ---Markdown previewer
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

end)
