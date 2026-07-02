return {
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local lspconfig = require("lspconfig")

      -- sourcekit: minimal config, let lspconfig handle the defaults
      lspconfig.sourcekit.setup({})

      -- tsserver
      lspconfig.tsserver.setup({})

      -- Simple keybindings
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local opts = { buffer = args.buf }
          vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
          vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
          vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
          vim.keymap.set("n", "gn", vim.lsp.buf.rename, opts)
        end,
      })
    end,
  },
}
