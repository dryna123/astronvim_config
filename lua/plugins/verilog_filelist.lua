return {
    "dryna123/verilog-filelist.nvim",
    lazy = false,
    -- ft = "verilog", -- 仅在打开verilog文件时加载插件，提升性能
    config = function()
        require("verilog_filelist").setup {
            debug = false,
        }
    end,
}
