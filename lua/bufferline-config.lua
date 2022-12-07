require("bufferline").setup {
  options = {
    always_show_bufferline = true,
    mode = "tabs", -- "buffers"
    themable = true,
    numbers = "none", -- "ordinal", "buffer_id", "both"
    close_command = "bdelete! %d",
    right_mouse_command = "bdelete! %d",
    left_mouse_command = "buffer %d",
    middle_mouse_command = nil,
    indicator = {
      icon = "", -- "▎",
      style = "icon"
    },

    buffer_close_icon = "",
    modified_icon = "●",
    close_icon = "",
    left_trunc_marker = "",
    right_trunc_marker = "",
    name_formater = "nil",
    max_name_length = 18,
    max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
    truncate_names = true, -- whether or not tab names should be truncated
    tab_size = 18,
    diagnostics = false, -- "nvim_lsp"
    diagnostics_update_in_insert = false,
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        text_align = "center",
        separator = false,
        padding = 1
      }
    },

    color_icons = true,
    show_buffer_icons = true,
    show_buffer_close_icons = true,
    show_buffer_default_icon = true,
    show_close_icon = false,
    show_tab_indicators = false,
    show_duplicate_prefix = false, -- whether to show duplicate buffer prefix
    persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
    separator_style = "thin", -- "slant", "thick"
    enforce_regular_tabs = false,
    hover = { enabled = false },
    sort_by = "id", -- "insert_after_current", "insert_at_end", "extension", "relative_directory", "directory", "tabs" 
  }
}
