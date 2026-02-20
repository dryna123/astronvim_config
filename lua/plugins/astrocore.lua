-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {

        -- passed to `vim.filetype.add`
        filetypes = {
            -- see `:h vim.filetype.add` for usage
            extension = {
                f = "filelist",
            },
            -- filename = {
            --     [".foorc"] = "fooscript",
            -- },
            -- pattern = {
            --     [".*/etc/foo/.*"] = "fooscript",
            -- },
        },

        -- vim options can be configured here
        options = {
            opt = { -- vim.opt.<key>
                relativenumber = false, -- sets vim.opt.relativenumber
                number = true, -- sets vim.opt.number
                spell = false, -- sets vim.opt.spell
                signcolumn = "yes", -- sets vim.opt.signcolumn to yes
                wrap = false, -- sets vim.opt.wrap
                tabstop = 4, -- 视觉显示层面的 Tab 宽度
                softtabstop = 4, -- 编辑操作层面的 Tab / 退格宽度
                shiftwidth = 4, -- 代码缩进层面的自动缩进宽度
                expandtab = true, -- 将Tab键输入替换为空格（核心开关)
            },
            g = { -- vim.g.<key>
                -- configure global vim variables (vim.g)
                -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
                -- This can be found in the `lua/lazy_setup.lua` file
            },
        },
        --快捷键配置
        mappings = {
            n = {
                -- verilog Automatic
                -- 自动reg/wire
                ["<Leader>vr"] = { ":call g:AutoReg()<CR>", desc = "Verilog/AutoDef: Auto generate reg" },
                ["<Leader>vw"] = { ":call g:AutoWire()<CR>", desc = "Verilog/AutoDef: Auto generate wire" },
                ["<Leader>vd"] = { ":call g:AutoDef()<CR>", desc = "Verilog/AutoDef: Auto generate reg+wire" },
                -- 自动例化
                ["<Leader>vi"] = { ":call g:AutoInst(0)<CR>", desc = "Verilog/AutoInst: Current module" },

                -- 增加文件头
                ["<Leader>vh"] = { "<Plug>Atv_Snippet_AddHeader;", desc = "Verilog/Snippet: Add file header" },

                -- RTL 树
                ["<Leader>vt"] = { ":RtlTree<CR>", desc = "Verilog/RTL: Open RTL tree" },
                ["<Leader>ve"] = { ":call g:atv_rtl_refresh<CR>", desc = "Verilog/RTL: Refresh RTL tree" },
            },
            i = {
                -- delay
                ["<C-e>"] = { " <= #`U_DLY ", desc = "insert delay" },
            },
        },
    },
}
