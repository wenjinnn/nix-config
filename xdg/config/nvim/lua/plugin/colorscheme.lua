return {
  {
    'Mofiqul/vscode.nvim',
    cond = not vim.g.vscode,
    config = function()
      local c = require('vscode.colors').get_colors()
      require('vscode').setup({
        transparent = true,
        group_overrides = {
          -- this supports the same val table as vim.api.nvim_set_hl
          -- use colors from this colorscheme by requiring vscode.colors!
          TelescopePromptNormal = { link = 'Pmenu' },
          TelescopeResultsNormal = { link = 'Pmenu' },
          TelescopePreviewNormal = {  fg=c.vscFront, bg=c.vscBack },
          TelescopePreviewBorder = {  fg=c.vscFront, bg=c.vscBack },
          TelescopeResultsBorder = { link = 'Pmenu' },
          TelescopePromptBorder = { link = 'Pmenu' },
          TelescopePromptTitle = { link = 'lualine_a_insert' },
          TelescopeResultsTitle = { link = 'lualine_a_normal' },
          TelescopePreviewTitle = { link = 'lualine_a_normal' },
          ['@interface'] = { link = '@constant' },
          ['@lsp.type.interface'] = { link = '@interface' },
          CmpItemMenu = { link = 'Comment' },
        }
      })
    end
  },
  { 'NvChad/nvim-colorizer.lua', cond = not vim.g.vscode, config = true },
}
