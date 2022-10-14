local util = require('util')

require('mason-lspconfig').setup()

require('mason-lspconfig').setup_handlers({
  function(server_name)
    local opts = {
      on_attach = util.on_attach,
      capabilities = util.capabilities,
      update_in_insert = true,
    }
    require('lspconfig')[server_name].setup(opts)
  end,
})

