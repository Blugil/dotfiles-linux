local home = os.getenv("HOME")

require('formatter').setup({
    filetype = {
        go = {
            function()
                return {
                    exe = 'goimports',
                    stdin = true,
                }
            end
        },
        javascript = {
            function()
                return {
                    exe = 'eslint_d',
                    args = {'--fix', vim.api.nvim_buf_get_name(0)},
                }
            end
        },
        typescript = {
            function() 
                return {
                    exe = 'eslint_d',
                    args = {'--fix', vim.api.nvim_buf_get_name(0)},
                }
            end
        },
        typescriptreact = {
            function() 
                return {
                    exe = 'eslint_d',
                    args = {'--fix', vim.api.nvim_buf_get_name(0)},
                }
            end
        }
    }
})
