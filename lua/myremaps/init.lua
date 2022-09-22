local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

---Remaps The Leader to <space>
vim.g.mapleader = " "

--Split Navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

--Terminal
keymap('n', "<C-t>", "<Cmd>execute v:count . 'ToggleTerm'<CR>", opts)
keymap('t', "<C-t>", "<Esc><Cmd>ToggleTerm<CR>", opts)

---SnipRun Plugin
keymap('n', "<C-s>", ":SnipRun<CR>", opts) --Snip Run On Normal Mode
keymap('v', "<C-s>", ":'<,'>SnipRun<CR>", opts) --Snip Run On Visual Mode
keymap('n', "cS", ":SnipClose<CR>", opts) --Snip Close
--
-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize +2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize -2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)


-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)



--WhicKey Remaps
local maps = {
    ["<leader>"] = {
        e = { --NVIM TREE
            name = "Tree Explorer",
            e = { ":NvimTreeToggle<CR>", "NVIM TREE Toggle" },
            f = { ":NvimTreeFocus<CR>", "NVIM TREE Focus" }
        },
        f = { --TELESCOPE
            name = "Telescope",
            f = { ":Telescope find_files<CR>", "Find Files" },
            w = { ":Telescope live_grep<CR>", "Find Words" },
            b = { ":Telescope buffers<CR>", "Find Buffers" },
            h = { ":Telescope help_tags<CR>", "Find Help" },
            d = { ":Telescope diagnostics<CR>", "Find Diagnostics" }
        },
        d = { -- Diagnostic
            name = "Diagnostic",
            d = { ":lua require'popui.diagnostics-navigator'()<CR>", "Trouble Toggle" }
        },
        l = { --LSP
            name = "+LPS",
            r = { ":lua vim.lsp.buf.rename()<CR>", "Rename" },
            a = { ":CodeActionMenu<CR>", "Code Actions" },
            f = { ":lua vim.lsp.buf.format({ timeout_ms = 1500 })<CR>", "Format" }
        },
    },
    ["t"] = { --Split and Buffers Navigation
        name = "Splits And Buffers",
        v = { ":vsplit<CR>", "Split Vertical" },
        h = { ":split<CR>", "Split Horizontal" },
        t = { ":q<CR>", "Close Split and Other Things" },
        d = { ":bd<CR>", "Delete Buffers" },
        e = { ":tabe<CR>", "Create a Buffer" }
    },
    ["o"] = { --Line Manipulation
        o = { "A<CR>", "Create a Line Bellow on Insert Mode" },
        i = { "O<Esc>j", "Add a Line Above" },
        p = { "o<Esc>k", "Create a Line Bellow" }
    },
}

return maps
