function AddSemicolon()
  local row, col = unpack(vim.api.nvim_win_get_cursor(0))
  vim.api.nvim_command("normal! A;")
  vim.api.nvim_win_set_cursor(0, { row, col })
end

vim.api.nvim_create_augroup("ZigFileType", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
  group = "ZigFileType",
  pattern = "zig",
  callback = function()
    vim.keymap.set("i", "<C-;>", AddSemicolon)
  end,
})
