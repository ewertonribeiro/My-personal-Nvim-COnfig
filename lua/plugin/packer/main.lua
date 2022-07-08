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
    use { 'dracula/vim', as = 'dracula' }
    use 'sainnhe/sonokai'
    use 'joshdick/onedark.vim'
    --
    --TreeSitter
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    --AutoPairs
    use 'jiangmiao/auto-pairs'
    --Coc
    -- Plug('neoclide/coc.nvim', { branch = 'release' })
    --Plenary
    use 'nvim-lua/plenary.nvim'
    --Telecope
    use 'nvim-telescope/telescope.nvim'
    --Web Dev Icons
    use 'kyazdani42/nvim-web-devicons' -- optional, for file icons
    --Nvim Tree
    use 'kyazdani42/nvim-tree.lua'
    --Which Key
    use 'folke/which-key.nvim'
    --GitSigns
    use 'lewis6991/gitsigns.nvim'
    --Bufferline
    use { 'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons' }
    --Comment
    use 'numToStr/Comment.nvim'
    --Alpha Nvim
    use 'goolord/alpha-nvim'
    --lualine
    use 'nvim-lualine/lualine.nvim'
    --Togglterm
    use { 'akinsho/toggleterm.nvim', tag = 'v1.*' }
    --Popup
    use 'nvim-lua/popup.nvim'
    --Notify
    use 'rcarriga/nvim-notify'
    --Trouble
    use 'folke/trouble.nvim'

    --LSP ZERO
    --Null LS
    use 'jose-elias-alvarez/null-ls.nvim'
    --LPS INSTALLER
    use "williamboman/nvim-lsp-installer"
    --Lsp-Config
    use "neovim/nvim-lspconfig"
    --LSP-ZERO
    use 'VonHeikemen/lsp-zero.nvim'
    --Nvim-Cmp
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/cmp-path'
    use 'saadparwaiz1/cmp_luasnip'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
    use 'quangnguyen30192/cmp-nvim-ultisnips'
    --Snippets
    use 'L3MON4D3/LuaSnip'
    use 'rafamadriz/friendly-snippets'
    --NVIM DAP
    use 'mfussenegger/nvim-dap'
    --COSMIC UI
    use 'CosmicNvim/cosmic-ui'
    use 'MunifTanjim/nui.nvim'
    --LSP  SIGNATURE
    use 'ray-x/lsp_signature.nvim'
    --LazyGit
    use 'kdheepak/lazygit.nvim'
    --Markdown Previews
    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install",
        setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
end)
