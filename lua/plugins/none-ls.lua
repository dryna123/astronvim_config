-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize None-ls sources

---@type LazySpec
return {
    "nvimtools/none-ls.nvim",
    opts = function(_, opts)
        -- opts variable is the default configuration table for the setup function call
        local null_ls = require "null-ls"
        -- Check supported formatters and linters
        -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/formatting
        -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics

        -- Only insert new sources, do not replace the existing ones
        -- (If you wish to replace, use `opts.sources = {}` instead of the `list_insert_unique` function)
        opts.sources = require("astrocore").list_insert_unique(opts.sources, {
            -- Set a formatter
            null_ls.builtins.formatting.stylua,
            -- null_ls.builtins.formatting.prettier,
            null_ls.builtins.diagnostics.verilator.with({
                method = null_ls.methods.DIAGNOSTICS_ON_SAVE,
                extra_args = {"-DU_DLY=0.1 ","-timing"}
            }),
            null_ls.builtins.formatting.verible_verilog_format.with({
                extra_args = {"--indentation_spaces=4","--named_port_alignment=align","--wrap_end_else_clauses=true","--port_declarations_alignment=align"},
            }),
        })
    end,
}
