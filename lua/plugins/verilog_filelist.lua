return {
    "dryna123/verilog-filelist.nvim",
    -- lazy = false,
    ft = "filelist", -- 仅在打开filelist文件时加载插件，提升性能
    config = function()
        require("verilog_filelist").setup {
            debug = false,
        }
    end,
}
