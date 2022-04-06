local lspkind = require("lspkind")
local cmp = require("cmp")
cmp.setup({
 
  preselect = cmp.PreselectMode.None,
  mapping = {
    ["<C-d>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
    ["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
    ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
    ["<C-e>"] = cmp.mapping.close(),
    -- super patchwork solution to allow for text tabbing and completion tabbing 
    -- TODO:
    --  spawn suggestions window with selected = false (check) 
    --      fixed with "noselect" added to "completeopt"
    ['<Tab>'] = function(fallback)
        if cmp.visible() then
            if not cmp.select_next_item() then
                if vim.bo.buftype ~= 'prompt' and has_words_before() then
                    cmp.complete()
                else
                    fallback()
                end
            end
        else
            fallback()
        end
    end,
        
    ['<S-Tab>'] = function(fallback)
        if cmp.visible() then
            if not cmp.select_prev_item() then
                if vim.bo.buftype ~= 'prompt' and has_words_before() then
                    cmp.complete()
                else
                    fallback()
                end
            end
        else
            fallback()
        end
    end,
    
    ["<CR>"] = cmp.mapping({
      i = cmp.mapping.confirm({ select = false }),
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
    { name = "ultisnips" },
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
    { name = "omni" },
    { name = "orgmode" },
    { name = "path" },
    { name = "calc" },
    --{ name = "vim-dadbod-completion" },
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

