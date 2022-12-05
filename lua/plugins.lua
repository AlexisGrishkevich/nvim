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

return require('packer').startup(function(use)
  use { "wbthomason/packer.nvim" } -- packer can manage itself
  use { "ellisonleao/gruvbox.nvim" } -- colorschemes


  -- Completion
  use { "hrsh7th/nvim-cmp" } -- autocompletion plugin
  use { "hrsh7th/cmp-buffer" } -- buffer completions
  use { "hrsh7th/cmp-path" } -- source for filesystem paths.
  use { "hrsh7th/cmp-cmdline" } -- source for vim's cmdline.

  -- use { "hrsh7th/cmp-nvim-lsp" } -- LSP source for nvim-cmp

  -- Snippet
  use { "saadparwaiz1/cmp_luasnip" } -- snippets source for nvim-cmp
  use { "L3MON4D3/LuaSnip" }  -- snippet engine
  use { "rafamadriz/friendly-snippets" } -- a bunch of snippets to use




  if packer_bootstrap then
    require("packer").sync()
  end
end)
