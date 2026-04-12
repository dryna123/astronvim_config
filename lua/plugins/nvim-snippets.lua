return {
    "garymjr/nvim-snippets",
    dependencies = {},
    opts = { friendly_snippets = false },
    lazy = true,
    specs = {
        { "L3MON4D3/LuaSnip", optional = true, enabled = false },
        { "rafamadriz/friendly-snippets", enabled = false },
        {
            "hrsh7th/nvim-cmp",
            optional = true,
            dependencies = { "garymjr/nvim-snippets" },
            opts = function(_, opts)
                if not opts.sources then opts.sources = {} end
                table.insert(opts.sources, { name = "snippets", priority = 2000 })
            end,
        },
        {
            "Saghen/blink.cmp",
            optional = true,
            opts = { snippets = { preset = "default" } },
        },
        {
            "danymat/neogen",
            optional = true,
            opts = { snippet_engine = "nvim" },
        },
    },
}
