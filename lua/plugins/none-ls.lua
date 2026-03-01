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
            null_ls.builtins.diagnostics.verilator.with {
                method = null_ls.methods.DIAGNOSTICS_ON_SAVE,
                -- extra_args = {"-Wno-DECLFILENAME","-DU_DLY=0.1 ","-timing"}
                extra_args = function()
                    local filelist_path = "flattened_filelist" -- 建议替换为绝对路径
                    -- 1. 原生读取文件，捕获错误
                    local ok, filelist = pcall(vim.fn.readfile, filelist_path)
                    -- 2. 读取失败则返回仅包含自定义参数的列表（或空列表，按需选择）
                    if not ok then
                        -- 可选1：仅返回自定义参数
                        return { "-timing", "-Wno-DECLFILENAME", "-DU_DLY=0.1" }
                        -- 可选2：返回空列表（和你原有逻辑一致）
                        -- return {}
                    end
                    -- 3. 读取成功：合并自定义参数 + filelist 内容
                    local custom_args = { "-timing", "-Wno-DECLFILENAME", "-DU_DLY=0.1" } -- 你的自定义参数
                    -- 把 filelist 拼接到自定义参数后面（顺序可调整）
                    local final_args = vim.list_extend(custom_args, filelist)
                    -- 4. 返回合并后的参数列表
                    return final_args
                end,
            },
            null_ls.builtins.formatting.verible_verilog_format.with {
                extra_args = {
                    "--indentation_spaces=4",
                    "--named_port_alignment=align",
                    "--wrap_end_else_clauses=true",
                    "--port_declarations_alignment=align",
                },
            },
        })
    end,
}
