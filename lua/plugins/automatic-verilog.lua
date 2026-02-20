return {
  -- 其他已有的插件配置...

  -- 安装automatic-verilog插件
  {
    "dryna123/automatic-verilog",  -- 插件的GitHub仓库地址（简化写法）
    version = false,    -- 不检查远程版本，也不尝试升级
    pin = true,         -- 固定当前版本，Lazy 不会修改本地文件
    update = false,     -- 明确禁止更新（Lazy 最新版支持）
    ft = "verilog",               -- 仅在打开verilog文件时加载插件，提升性能
    -- 可选：添加插件的自定义配置（如果有需要）
    config = function()
      -- 这里可以添加automatic-verilog的自定义设置，示例：
      vim.g.atv_crossdir_mdoe = 2
      vim.g.atv_crossdir_tags_browse =0
      -- vim.g.automatic_verilog_case = "lower"  -- 关键字小写
    end
  },
}
