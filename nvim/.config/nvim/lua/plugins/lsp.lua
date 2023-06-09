return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "wbthomason/lsp-status.nvim",
            "williamboman/mason-lspconfig.nvim",
            "williamboman/mason.nvim",
            "jose-elias-alvarez/typescript.nvim",
            "b0o/schemastore.nvim",
            "folke/neodev.nvim",
            "jose-elias-alvarez/null-ls.nvim",
            "jayp0521/mason-null-ls.nvim",
            "simrat39/rust-tools.nvim",
        },
        config = function()
            require("config.lsp")
            require("config.null-ls")
        end,
    },
    {
        "j-hui/fidget.nvim",
        config = function()
            require("fidget").setup({})
        end,
    },
    { "onsails/lspkind-nvim" },
}
