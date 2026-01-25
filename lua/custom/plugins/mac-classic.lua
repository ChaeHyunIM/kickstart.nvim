-- Mac Classic Color Scheme for Neovim
-- Ported from mac_classic.vim by Drew Neil

return {
  'rktjmp/lush.nvim', -- Optional dependency for colorscheme development
  lazy = false,
  priority = 1000, -- Load before other plugins
  config = function()
    -- Create the colorscheme
    local function setup_mac_classic()
      vim.o.background = 'light'
      vim.cmd 'highlight clear'

      if vim.fn.exists 'syntax_on' then
        vim.cmd 'syntax reset'
      end

      vim.g.colors_name = 'mac_classic'

      local hi = function(group, opts)
        vim.api.nvim_set_hl(0, group, opts)
      end

      -- GUI highlights
      hi('Cursor', { fg = '#FFFFFF', bg = '#3C4C72' })
      hi('Visual', { bg = '#C6DEFF' })
      hi('CursorLine', { bg = '#F0F6FF' })
      hi('CursorColumn', { bg = '#F0F6FF' })
      hi('LineNr', { fg = '#808080', bg = '#EFEFEF' })
      hi('VertSplit', { fg = '#FFFFFF', bg = '#CFCFCF' })
      hi('MatchParen', { fg = '#1E39F6', bold = true })
      hi('Pmenu', { bg = '#EFEFEF' })
      hi('PmenuSel', { bg = '#C6DEFF' })
      hi('Directory', { fg = '#D51015', bold = true })
      hi('Folded', { fg = '#0066FF', bg = '#FFFFFF' })

      -- StatusLine
      hi('StatusLine', { fg = '#000000', bg = '#C6DEFF', italic = true })
      hi('StatusLineNC', { fg = '#000000', bg = '#EFEFEF' })

      -- Search
      hi('IncSearch', { bg = '#FFCE77' })
      hi('Search', { bg = '#FFE6BB' })

      -- Syntax
      hi('Normal', { fg = '#000000', bg = '#FFFFFF' })
      hi('Boolean', { fg = '#6E79F1', bold = true })
      hi('Character', { fg = '#D51015', bold = true })
      hi('Comment', { fg = '#0066FF', italic = true })
      hi('Conditional', { fg = '#1E39F6', bold = true })
      hi('Constant', { fg = '#D51015', bold = true })
      hi('Define', { fg = '#1E39F6', bold = true })
      hi('ErrorMsg', { fg = '#FFFFFF', bg = '#990000' })
      hi('WarningMsg', { fg = '#FFFFFF', bg = '#990000' })
      hi('Float', { fg = '#0000A2' })
      hi('Function', { fg = '#0000A2', bold = true })
      hi('Identifier', { fg = '#1E39F6', bold = true })
      hi('Keyword', { fg = '#1E39F6', bold = true })
      hi('Label', { fg = '#007B22' })
      hi('Number', { fg = '#0000A2' })
      hi('Operator', { fg = '#1E39F6', bold = true })
      hi('PreProc', { fg = '#1E39F6', bold = true })
      hi('Special', { fg = '#000000' })
      hi('Statement', { fg = '#1E39F6', bold = true })
      hi('StorageClass', { fg = '#1E39F6', bold = true })
      hi('String', { fg = '#007B22' })
      hi('Title', { fg = '#000000', bold = true })
      hi('Todo', { fg = '#0066FF', reverse = true, bold = true, italic = true })
      hi('Underlined', { underline = true })

      -- Invisible character colors
      hi('NonText', { fg = '#DFDFDF', bg = '#FFFFFF' })
      hi('SpecialKey', { fg = '#DFDFDF', bg = '#FFFFFF' })

      -- Diff styles
      hi('diffAdded', { fg = '#007B22', bg = '#FFFFFF' })
      hi('diffRemoved', { fg = '#D51015', bg = '#FFFFFF' })
      hi('diffFile', { fg = '#6E79F1', bg = '#FFFFFF' })
      hi('diffNewFile', { fg = '#6E79F1', bg = '#FFFFFF' })
      hi('diffLine', { fg = '#000000', bg = '#FFFFFF' })
      hi('diffAdd', { fg = '#007B22', bg = '#FFFFFF' })
      hi('diffChange', { fg = '#007B22', bg = '#FFFFFF' })
      hi('diffText', { fg = '#007B22', bg = '#FFFFFF' })
      hi('diffDelete', { link = 'diffRemoved' })

      -- Git styles
      hi('gitcommitFirstLine', { fg = '#000000', bg = '#FFFFFF' })
      hi('gitcommitSelectedType', { fg = '#007B22', bg = '#FFFFFF' })
      hi('gitcommitSelectedFile', { link = 'gitcommitSelectedType' })
      hi('gitcommitDiscardedType', { fg = '#D51015', bg = '#FFFFFF' })
      hi('gitcommitDiscardedFile', { link = 'gitcommitDiscardedType' })
      hi('gitcommitUntrackedFile', { fg = '#6E79F1', bg = '#FFFFFF' })

      -- Ruby styles
      hi('rubyClass', { fg = '#1E39F6', bold = true })
      hi('rubyFunction', { fg = '#0000A2', bold = true })
      hi('rubyInterpolationDelimiter', { fg = '#00BC41' })
      hi('rubyInterpolation', { fg = '#00BC41' })
      hi('rubySymbol', { fg = '#D51015', bold = true })
      hi('rubyConstant', { fg = '#6E79F1', bold = true })
      hi('rubyStringDelimiter', { fg = '#007B22' })
      hi('rubyInstanceVariable', { fg = '#318495' })
      hi('rubyInclude', { fg = '#1E39F6', bold = true })
      hi('rubyGlobalVariable', { fg = '#318495' })
      hi('rubyRegexp', { fg = '#E18AC7' })
      hi('rubyRegexpAnchor', { fg = '#E18AC7' })
      hi('rubyRegexpQuantifier', { fg = '#E18AC7' })
      hi('rubyRegexpParens', { fg = '#E18AC7' })
      hi('rubyRegexpEscape', { fg = '#00BC41' })
      hi('rubyRegexpCharClass', { fg = '#00BC41' })
      hi('rubyRegexpDelimiter', { fg = '#E18AC7' })
      hi('rubyEscape', { fg = '#00BC41' })
      hi('rubyControl', { fg = '#1E39F6', bold = true })
      hi('rubyOperator', { fg = '#1E39F6', bold = true })
      hi('rubyException', { fg = '#1E39F6', bold = true })
      hi('rubyPseudoVariable', { fg = '#318495' })
      hi('rubyRailsUserClass', { fg = '#6E79F1', bold = true })
      hi('rubyRailsARAssociationMethod', { fg = '#3C4C72', bold = true })
      hi('rubyRailsARMethod', { fg = '#3C4C72', bold = true })
      hi('rubyRailsRenderMethod', { fg = '#3C4C72', bold = true })
      hi('rubyRailsMethod', { fg = '#3C4C72', bold = true })
      hi('erubyComment', { link = 'Comment' })
      hi('erubyRailsMethod', { fg = '#3C4C72', bold = true })

      -- XML
      hi('xmlEndTag', { link = 'xmlTag' })

      -- HTML
      hi('htmlTag', { fg = '#1E39F6' })
      hi('htmlEndTag', { link = 'htmlTag' })
      hi('htmlTagName', { link = 'htmlTag' })
      hi('htmlArg', { link = 'htmlTag' })
      hi('htmlSpecialChar', { fg = '#D51015', bold = true })
      hi('htmlH1', { bold = true })
      hi('htmlH2', { link = 'htmlH1' })
      hi('htmlH3', { link = 'htmlH1' })
      hi('htmlH4', { link = 'htmlH1' })
      hi('htmlH5', { link = 'htmlH1' })
      hi('htmlH6', { link = 'htmlH1' })

      -- JavaScript
      hi('javaScriptFunction', { fg = '#1E39F6', bold = true })
      hi('javaScriptFuncName', { fg = '#318495', italic = true })
      hi('javaScriptLabel', { fg = '#0000A2', bold = true })
      hi('javaScriptRailsFunction', { fg = '#3C4C72', bold = true })
      hi('javaScriptType', { fg = '#318495' })
      hi('javaScriptArgument', { fg = '#318495', italic = true })
      hi('javaScriptRegexpString', { fg = '#E18AC7' })
      hi('javaScriptSpecial', { fg = '#00BC41' })

      -- YAML
      hi('yamlAnchor', { fg = '#318495' })
      hi('yamlAlias', { fg = '#318495' })
      hi('yamlDocumentHeader', { bg = '#F2F2F2' })

      -- CSS
      hi('cssTagName', { bold = true })
      hi('cssIdentifier', { italic = true })
      hi('cssClassName', { link = 'cssIdentifier' })
      hi('cssDefinition', { fg = '#6E79F1' })
      hi('cssRenderProp', { link = 'cssDefinition' })
      hi('cssTextProp', { link = 'cssDefinition' })
      hi('cssFontProp', { link = 'cssDefinition' })
      hi('cssColorProp', { link = 'cssDefinition' })
      hi('cssBoxProp', { link = 'cssDefinition' })
      hi('cssGeneratedContentProp', { link = 'cssDefinition' })
      hi('cssUIProp', { link = 'cssDefinition' })
      hi('cssCommonAttr', { fg = '#00BC41' })
      hi('cssAttr', { link = 'cssCommonAttr' })
      hi('cssRenderAttr', { link = 'cssCommonAttr' })
      hi('cssTextAttr', { link = 'cssCommonAttr' })
      hi('cssFontAttr', { link = 'cssCommonAttr' })
      hi('cssGeneratedContentAttr', { link = 'cssCommonAttr' })
      hi('cssURL', { fg = '#007B22' })
      hi('cssFunctionName', { fg = '#3C4C72', bold = true })
      hi('cssColor', { fg = '#D51015', bold = true })
      hi('cssValueLength', { fg = '#0000A2' })
      hi('cssImportant', { fg = '#1E39F6', bold = true })

      -- Vimscript
      hi('vimGroup', { fg = '#007B22', bold = true })
      hi('vimHiGroup', { link = 'vimGroup' })
      hi('vimCommentTitle', { fg = '#3C4C72', bold = true })
      hi('helpSpecial', { fg = '#6E79F1' })

      -- Markdown
      hi('markdownBold', { bold = true })
      hi('markdownItalic', { italic = true })
      hi('markdownCode', { fg = '#007B22' })
      hi('markdownCodeBlock', { link = 'markdownCode' })

      -- Treesitter highlights (for modern Neovim)
      hi('@variable', { fg = '#000000' })
      hi('@variable.builtin', { fg = '#318495' })
      hi('@constant', { fg = '#D51015', bold = true })
      hi('@constant.builtin', { fg = '#6E79F1', bold = true })
      hi('@function', { fg = '#0000A2', bold = true })
      hi('@function.builtin', { fg = '#0000A2', bold = true })
      hi('@function.call', { fg = '#0000A2' })
      hi('@method', { fg = '#0000A2', bold = true })
      hi('@method.call', { fg = '#0000A2' })
      hi('@keyword', { fg = '#1E39F6', bold = true })
      hi('@keyword.function', { fg = '#1E39F6', bold = true })
      hi('@keyword.return', { fg = '#1E39F6', bold = true })
      hi('@keyword.operator', { fg = '#1E39F6', bold = true })
      hi('@conditional', { fg = '#1E39F6', bold = true })
      hi('@repeat', { fg = '#1E39F6', bold = true })
      hi('@string', { fg = '#007B22' })
      hi('@string.escape', { fg = '#00BC41' })
      hi('@string.regex', { fg = '#E18AC7' })
      hi('@number', { fg = '#0000A2' })
      hi('@boolean', { fg = '#6E79F1', bold = true })
      hi('@type', { fg = '#6E79F1', bold = true })
      hi('@type.builtin', { fg = '#6E79F1', bold = true })
      hi('@parameter', { fg = '#318495' })
      hi('@property', { fg = '#318495' })
      hi('@field', { fg = '#318495' })
      hi('@comment', { fg = '#0066FF', italic = true })
      hi('@punctuation', { fg = '#000000' })
      hi('@operator', { fg = '#1E39F6', bold = true })
      hi('@tag', { fg = '#1E39F6' })
      hi('@tag.attribute', { fg = '#1E39F6' })
      hi('@tag.delimiter', { fg = '#1E39F6' })

      -- LSP semantic tokens
      hi('@lsp.type.class', { fg = '#6E79F1', bold = true })
      hi('@lsp.type.function', { fg = '#0000A2', bold = true })
      hi('@lsp.type.method', { fg = '#0000A2', bold = true })
      hi('@lsp.type.parameter', { fg = '#318495' })
      hi('@lsp.type.property', { fg = '#318495' })
      hi('@lsp.type.variable', { fg = '#000000' })

      -- Diagnostic
      hi('DiagnosticError', { fg = '#990000' })
      hi('DiagnosticWarn', { fg = '#D51015' })
      hi('DiagnosticInfo', { fg = '#0066FF' })
      hi('DiagnosticHint', { fg = '#318495' })
      hi('DiagnosticUnderlineError', { undercurl = true, sp = '#990000' })
      hi('DiagnosticUnderlineWarn', { undercurl = true, sp = '#D51015' })
      hi('DiagnosticUnderlineInfo', { undercurl = true, sp = '#0066FF' })
      hi('DiagnosticUnderlineHint', { undercurl = true, sp = '#318495' })

      -- Floating windows
      hi('NormalFloat', { fg = '#000000', bg = '#FFFFFF' })
      hi('FloatBorder', { fg = '#CFCFCF', bg = '#FFFFFF' })

      -- Telescope
      hi('TelescopeNormal', { fg = '#000000', bg = '#FFFFFF' })
      hi('TelescopeBorder', { fg = '#CFCFCF', bg = '#FFFFFF' })
      hi('TelescopeSelection', { bg = '#C6DEFF' })
      hi('TelescopeMatching', { fg = '#D51015', bold = true })

      -- WhichKey
      hi('WhichKey', { fg = '#1E39F6', bold = true })
      hi('WhichKeyGroup', { fg = '#0066FF' })
      hi('WhichKeyDesc', { fg = '#000000' })
      hi('WhichKeySeparator', { fg = '#808080' })

      -- GitSigns
      hi('GitSignsAdd', { fg = '#007B22' })
      hi('GitSignsChange', { fg = '#0066FF' })
      hi('GitSignsDelete', { fg = '#D51015' })

      -- Mini.statusline
      hi('MiniStatuslineModeNormal', { fg = '#FFFFFF', bg = '#3C4C72', bold = true })
      hi('MiniStatuslineModeInsert', { fg = '#FFFFFF', bg = '#007B22', bold = true })
      hi('MiniStatuslineModeVisual', { fg = '#FFFFFF', bg = '#6E79F1', bold = true })
      hi('MiniStatuslineModeReplace', { fg = '#FFFFFF', bg = '#D51015', bold = true })
      hi('MiniStatuslineModeCommand', { fg = '#FFFFFF', bg = '#0000A2', bold = true })
      hi('MiniStatuslineFilename', { fg = '#000000', bg = '#EFEFEF' })
      hi('MiniStatuslineFileinfo', { fg = '#000000', bg = '#EFEFEF' })
      hi('MiniStatuslineDevinfo', { fg = '#000000', bg = '#C6DEFF' })
    end

    -- Set up the colorscheme
    setup_mac_classic()

    -- Create command to reload the colorscheme
    vim.api.nvim_create_user_command('MacClassic', setup_mac_classic, {})
  end,
}
