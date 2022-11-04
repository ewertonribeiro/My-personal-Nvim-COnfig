local prettier = require("prettier");

prettier.setup({
    bin = 'prettierd',
    filetypes = {
        "css",
        "scss",
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
    }
})

