local on_attach = function(client, bufnr)
	vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
  -- LSPが持つフォーマット機能を無効化する
  -- →例えばtsserverはデフォルトでフォーマット機能を提供しますが、利用したくない場合はコメントアウトを解除してください
  --client.server_capabilities.documentFormattingProvider = false
  
  -- 下記ではデフォルトのキーバインドを設定しています
  -- ほかのLSPプラグインを使う場合（例：Lspsaga）は必要ないこともあります
	
  local set = vim.keymap.set
  --set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
  set("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>")
  --set("n", "<C-m>", "<cmd>lua vim.lsp.buf.signature_help()<CR>")
  --set("n", "gy", "<cmd>lua vim.lsp.buf.type_definition()<CR>")
  --set("n", "rn", "<cmd>lua vim.lsp.buf.rename()<CR>")
  --set("n", "ma", "<cmd>lua vim.lsp.buf.code_action()<CR>")
  --set("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>")
  --set("n", "<space>e", "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>")
  --set("n", "[d", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>")
  --set("n", "]d", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>")
end

-- local virtual_env_path = vim.trim(vim.fn.system('poetry config virtualenvs.path'))
-- local virtual_env_dirctory = vim.trim(vim.fn.system('poetry env list'))
-- local python_path = 'python'

-- if #vim.split(virtual_env_dirctory, '\n') == 1 then
--   python_path = string.format("%s/%s/bin/python", virtual_env_path, virtual_env_dirctory)
-- end

-- 補完プラグインであるcmp_nvim_lspをLSPと連携させています（後述）
local capabilities = require("cmp_nvim_lsp").default_capabilities()
-- この一連の記述で、mason.nvimでインストールしたLanguage Serverが自動的に個別にセットアップされ、利用可能になります
local nvim_lsp = require('lspconfig')
require("mason").setup()
require("mason-lspconfig").setup()
require("mason-lspconfig").setup_handlers {
  function (server_name) -- default handler (optional)
    require("lspconfig")[server_name].setup {
      on_attach = on_attach, --keyバインドなどの設定を登録
      capabilities = capabilities, --cmpを連携
    }
		require("lspconfig").pyright.setup{
			settings = {
				python = {
					-- venvPath = ".",
					-- venv = "./.venv",
					pythonPath = "./.venv/bin/python",
					analysis = {
						extraPaths = {"."}
					}
				}
			}
		}
		require("lspconfig").jedi_language_server.setup{
			init_options = {
				hover = {
					enable = true,
				},
				diagnostic = {
					enable = true,
				},
				completion = {
					disableSnippets = true,
				},
				jediSettings = {
      		autoImportModules = {'numpy', 'pandas'},
    		},
				workspace = {
					environmentPath = "./.venv/bin/python",
				},
			}
		}
    require("lspconfig").denols.setup({
      root_dir = nvim_lsp.util.root_pattern("deno.json"),
      init_options = {
        lint = true,
        unstable = true,
        suggest = {
          imports = {
            hosts = {
              ["https://deno.land"] = true,
              ["https://cdn.nest.land"] = true,
              ["https://crux.land"] = true,
            },
          },
        },
      },
    })
    require("lspconfig").tsserver.setup({
      root_dir = nvim_lsp.util.root_pattern("package.json"),
    })
	end,
}
