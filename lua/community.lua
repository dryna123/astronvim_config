-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
    "AstroNvim/astrocommunity",
    -- pack
    { import = "astrocommunity.pack.lua" },
    -- { import = "astrocommunity.pack.verilog" },
    { import = "astrocommunity.pack.toml" },
    -- colorscheme
    { import = "astrocommunity.colorscheme.catppuccin" },
    { import = "astrocommunity.colorscheme.cyberdream-nvim" },
    { import = "astrocommunity.colorscheme.monokai-pro-nvim" },
    { import = "astrocommunity.colorscheme.tokyodark-nvim" },
    { import = "astrocommunity.colorscheme.tokyonight-nvim" },
    { import = "astrocommunity.colorscheme.rose-pine" },
    { import = "astrocommunity.colorscheme.nightfox-nvim" },
    { import = "astrocommunity.colorscheme.gruvbox-nvim" },
    -- neovide
    { import = "astrocommunity.recipes.neovide" },
    --Default Statusline With Mode Text
    { import = "astrocommunity.recipes.heirline-mode-text-statusline" },
    -- { import = "astrocommunity.recipes.heirline-clock-statusline" },
    -- yazi-nvim
    { import = "astrocommunity.file-explorer.yazi-nvim" },
    -- rainbow
    { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
    -- nvim-snippets
    { import = "astrocommunity.snippet.nvim-snippets" },
    -- ui
    -- { import = "astrocommunity.utility.noice-nvim" },
    -- vscode
    { import = "astrocommunity.recipes.vscode" },
}
