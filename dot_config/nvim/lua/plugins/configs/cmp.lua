local lspkind = require("lspkind")
local cmp = require("cmp")
cmp.setup({
  -- local cmp_ultisnips_mappings = require("cmp_nvim_ultisnips.mappings")    
  mapping = {
    ["<C-d>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
    ["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
    ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
    ["<C-e>"] = cmp.mapping.close(),
    ['<Down>'] = cmp.mapping(cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }), {'i'}),
    ['<Up>'] = cmp.mapping(cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }), {'i'}),
    ['<C-n>'] = cmp.mapping({
        c = function()
            if cmp.visible() then
                cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
            else
                vim.api.nvim_feedkeys(t('<Down>'), 'n', true)
            end
        end,
        i = function(fallback)
            if cmp.visible() then
                cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
            else
                fallback()
            end
        end
    }),
    ['<C-p>'] = cmp.mapping({
        c = function()
            if cmp.visible() then
                cmp.select_prev_item({ behavior = cmp.SelectBehavior.Select })
            else
                vim.api.nvim_feedkeys(t('<Up>'), 'n', true)
            end
        end,
        i = function(fallback)
            if cmp.visible() then
                cmp.select_prev_item({ behavior = cmp.SelectBehavior.Select })
            else
                fallback()
            end
        end
    }),
    
    ["<CR>"] = cmp.mapping({
      i = cmp.mapping.confirm({ select = false }),
      c = cmp.mapping.confirm({ select = false }),
    }),
    
  },
    
  appearance = {
      menu = {
          direction = 'above'
      }
  },
  completion = {
    completeopt = "menu,menuone,noselect,noinsert",
  },
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },
  formatting = {
    format = lspkind.cmp_format({ with_text = true, maxwidth = 100 }),
  },
  sources = {
    { name = "luasnip" },
    { name = "nvim_lsp" },
    {
      name = "buffer",
      option = {
        get_bufnrs = function()
          return vim.api.nvim_list_bufs()
        end,
      },
    },
    { name = "nvim_lua" },
    { name = "crates" },
    -- { name = "omni" },
    { name = "orgmode" },
    { name = "path" },
    { name = "calc" },
  },
  experimental = {
    ghost_text = false,
  },
})


cmp.setup.cmdline(":", {
  sources = {
    { name = "cmdline", keyword_length = 2 },
    { name = "path" },
  },
})
-- Use buffer source for `/`.
cmp.setup.cmdline("/", {
  sources = {
    { name = "buffer" },
  },
})

cmp.setup.cmdline("?", {
  sources = {
    { name = "buffer" },
  },
})

