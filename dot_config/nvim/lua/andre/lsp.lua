vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_autogroup('kickstart-lsp-attach', { clear = true}),
  callback = function(event)

    local map = function(keys, func, desc)
      vim.keymap.set('n', keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
    end

    map('gd', require('telescope.builtin').lsp_definitions, '[g]oto [d]efinition')
    map('gr', require('telescope.builtin').lsp_references, '[g]oto [r]eferences')
    map('gI', require('telescope.builtin').lsp_implementations, '[g]oto [I]mplementation')

    map('<leader>D', require('telescope.builtin').lsp_type_definitions, 'Type [D]efinitions')
    map('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[d]ocument [s]ymbols')
    map('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols), '[w]orkspace [s]ymbols')

    map('<leader>rn', vim.lsp.buf.rename, '[r]e[n]ame')
    map('<leader>ca', vim.lsp.code_action, '[c]ode [a]ction')

    map('K', vim.lsp.buf.hover, 'Hover documentation')
    map('gD', vim.lsp.buf.declaration, '[g]oto [D]ocumentation')

  end,
})

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = vim.tbl_deep_extend('force', capabilities, require('cmp_nvim_lsp').default_capabilities())

local servers = {
  -- https://www.youtube.com/watch?v=m8C0Cq9Uv9o&t=827s
}
