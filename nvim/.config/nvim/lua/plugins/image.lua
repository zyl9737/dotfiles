return {
  {
    "3rd/image.nvim",
    opts = {
      backend = "sixel",
      processor = "magick_rock", -- 使用 FFI 加速，避免 CLI 的卡顿和乱码
      integrations = {
        markdown = {
          enabled = true,
          clear_in_insert_mode = false,
          download_remote_images = true,
          only_render_image_at_cursor = true, -- 光标移上去显示
          only_render_image_at_cursor_mode = "popup",
          floating_windows = true,
          filetypes = { "markdown", "vimwiki" },
        },
      },
      max_width = 100,
      max_height_window_percentage = 40,
      tmux_show_only_in_active_window = true,
      window_overlap_clear_enabled = true,
      editor_only_render_when_focused = false,
    },
  },
  {
    "folke/snacks.nvim",
    opts = {
      image = { enabled = false },
    },
  },
}
