-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

-- Indent two spaces for certain filetypes
vim.api.nvim_create_autocmd({ "FileType" }, {
  group = augroup("indent_two_spaces"),
  pattern = { "js", "jsx", "ts", "tsx", "vue" },
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
  end,
})
