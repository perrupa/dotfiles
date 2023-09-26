
-- Barbar config (romgrk/barbar.nvim)
-- disable auto-setup
vim.g.barbar_auto_setup = false

require'barbar'.setup {
  maximum_padding = 2,
  maximum_length = 30,

  icons = {
    -- Configure the base icons on the bufferline.
    buffer_index = true,
    buffer_number = false,
    button = '',
    inactive = {button = '×'},
    modified = {button = '●'},
    pinned = {button = '車', filename = true, separator = {right = ''}},

    -- Enables / disables diagnostic symbols
    diagnostics = {
      [vim.diagnostic.severity.ERROR] = {enabled = true, icon = 'ﬀ'},
      [vim.diagnostic.severity.WARN] = {enabled = true},
      [vim.diagnostic.severity.INFO] = {enabled = true},
      [vim.diagnostic.severity.HINT] = {enabled = true},
    },
    filetype = {
      custom_colors = false,
      enabled = true,
    },
  },
}

-- LSP
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    -- virtual_text = false
  }
)

