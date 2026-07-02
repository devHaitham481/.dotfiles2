return {
  "jrop/tuis.nvim",
  config = function()
    -- Optional: set up keymaps
    vim.keymap.set("n", "<leader>m", function()
      require("tuis").choose()
    end, { desc = "Choose Morph UI" })
  end,
}
