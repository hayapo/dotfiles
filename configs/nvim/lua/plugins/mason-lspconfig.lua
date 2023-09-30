return {
  "williamboman/mason-lspconfig.nvim",
  config = function()
    require("mason-lspconfig").setup({
      ensure_installed = { 

        "astro",
        "bashls",
        "cssls",
        "denols",
        "dockerls",
        "gopls",
        "html",
        "lua_ls", 
        "rust_analyzer",
        "tsserver",
        "zls",
      },
    })
  end,
}
