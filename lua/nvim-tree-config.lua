require("nvim-tree").setup {
  disable_netrw = true,
  hijack_netrw = true,
  update_focused_file = {
    enable = true,
    update_root = true
  },

  renderer = {
    add_trailing = true,
    highlight_git = true,
    highlight_opened_files = "icon",
    root_folder_label = ":t",
    indent_markers = {
      enable = true,
    },
    icons = {
      glyphs = {
        git = {
          unstaged = "",
          staged = "S",
          unmerged = "",
          renamed = "➜",
          untracked = "U",
          deleted = "",
          ignored = "◌",
        }
      }
    },
    special_files = {
      "CMakeList.txt",
      "README.md"
    }
  },

  diagnostics = {
    enable = true,
    show_on_dirs = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },

  actions = {
    expand_all = {
      max_folder_discovery = 100,
      exclude = {
        ".git",
        "build"
      },
    },
    open_file = {
      quit_on_open = false,
      resize_window = true,
      window_picker = {
        enable = false,
        chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
      }
    },
    remove_file = {
      close_window = true,
    },
  },

  tab = {
    sync = {
      open = true,
    }
  }
}
