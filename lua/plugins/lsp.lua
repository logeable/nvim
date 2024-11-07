return {
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup {
        ensure_installed = { "lua_ls", "rust_analyzer", "gopls" },
      }
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig["lua_ls"].setup({})
      lspconfig["gopls"].setup({})
      lspconfig["rust_analyzer"].setup({})
    end
  }
}
