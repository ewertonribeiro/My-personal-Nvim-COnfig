--NVIM TREE
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
        -- {key = "a" , action = "dir_down"}
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    custom = {"^.git$"},
    dotfiles = false,
  },
  create_in_closed_folder = false,
})
