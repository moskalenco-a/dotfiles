-- take 'lspconfig server name' from this table
-- https://github.com/williamboman/mason-lspconfig.nvim/blob/main/doc/server-mapping.md
-- and treesitter name from this page
-- https://github.com/nvim-treesitter/nvim-treesitter#supported-languages

local M = {
  language_servers = {},
  treesitters = {}
}

local languages = {
  ['C / C++'] = {
    language_server = 'clangd',
    treesitters = { 'c', 'cpp' }
  },
  ['C#'] = {
    language_server = 'omnisharp',
    treesitters = { 'c_sharp' }
  },
  ['Java'] = {
    language_server = 'jdtls',
    treesitters = { 'java' }
  },
  ['Python'] = {
    language_server = 'pyright',
    treesitters = { 'python' }
  },
  ['JS / TS'] = {
    language_server = 'tsserver',
    treesitters = { 'javascript', 'typescript' }
  },
  ['Go'] = {
    language_server = 'gopls',
    treesitters = { 'go' }
  },
  ['Lua'] = {
    language_server = 'lua_ls',
    treesitters = { 'lua' }
  },
  ['Bash'] = {
    language_server = nil,
    treesitters = { 'bash' }
  },
  ['Markdown'] = {
    language_server = nil,
    treesitters = { 'markdown', 'markdown_inline' }
  },
  ['Vim'] =  {
    language_server = nil,
    treesitters = { 'vim', 'vimdoc' }
  },
}

for _, items in pairs(languages) do
  table.insert(M.language_servers, items.language_server)
  for _, treesitter in pairs(items.treesitters) do
    table.insert(M.treesitters, treesitter)
  end
end

return M
