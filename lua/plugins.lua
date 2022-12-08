-- Automatically install packer
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    print("Installing packer close and reopen Neovim...")
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Have packer use a popup window
require("packer").init({
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
})

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
  use { "wbthomason/packer.nvim" } -- packer can manage itself
  use { "nvim-tree/nvim-tree.lua" } -- file explorer
  use { "nvim-tree/nvim-web-devicons" }
  use { "akinsho/bufferline.nvim" } -- buffer line
  use { "nvim-lualine/lualine.nvim" } -- status line

---- LSP -----------------------------------------------------------------
  use { "neovim/nvim-lspconfig" } -- enable LSP
  use { "williamboman/mason.nvim" } -- LSP installer
  use { "williamboman/mason-lspconfig.nvim" }
  use { "p00f/clangd_extensions.nvim" } -- configuration for clangd

---- Completion ----------------------------------------------------------
  use { "hrsh7th/nvim-cmp" } -- autocompletion plugin
  use { "hrsh7th/cmp-buffer" } -- buffer completions
  use { "hrsh7th/cmp-path" } -- path completions
  use { "hrsh7th/cmp-cmdline" } -- cmdline completions
  use { "saadparwaiz1/cmp_luasnip" } -- snippets completions
  use { "hrsh7th/cmp-nvim-lsp" } -- LSP source for nvim-cmp

---- Snippet -------------------------------------------------------------
  use { "L3MON4D3/LuaSnip" }  -- snippet engine
  use { "rafamadriz/friendly-snippets" } -- a bunch of snippets to use

---- Colorschemes --------------------------------------------------------
  use { "LunarVim/lunar.nvim" }
  use { "lunarvim/Onedarker.nvim" }
--------------------------------------------------------------------------

  if packer_bootstrap then
    require("packer").sync()
  end
end)
