local M = {}

function M.map(mode, lhs, rhs)
  local options = { noremap = true }

  -- if opts then
  --   ---@diagnostic disable-next-line: cast-local-type
  --   options = vim.tbl_extend("force", options, opts)
  -- end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

return M
