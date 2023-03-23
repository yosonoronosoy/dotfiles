return {
    {
        "ThePrimeagen/refactoring.nvim",
        dependencies = {
            { "nvim-lua/plenary.nvim" },
            { "nvim-treesitter/nvim-treesitter" },
        },
        config = function()
            require("config.refactoring")
        end,
    },
    {
        "theprimeagen/harpoon",
        config = function()
            require("config.harpoon")
        end,
    },
}
