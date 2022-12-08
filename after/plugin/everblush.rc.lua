local status, everblush = pcall(require, 'everblush')
if (not status) then 
  print("Everblush Not Found")
  return
end

local colors = require('everblush.core').get_colors()

everblush.setup({
  nvim_tree = {
    contrast = true
  },
  override = {
    Cursor = { bg = colors.comment },
    CursorLineNr = { fg = colors.color3, bg = colors.comment },
    CursorColumn = { bg = colors.comment },
    LineNr = { fg = colors.foreground, bg = colors.background },
    Search = { bg = colors.color11 },

    -- Telescope
    TelescopeSelection = { fg = colors.color3, bg = colors.comment },
    TelescopeNormal = { fg = colors.color3 },

    -- LspSaga
    LspFloatWinNormal = { bg = colors.background },
    LspFloatWinBorder = { fg = colors.color3 },
    LspSagaHoverBorder = { fg = colors.color3 },
    LspSagaRenameBorder = { fg = colors.color4 , bg = colors.color3},
    LspSagaDefPreviewBorder = { fg = colors.color4, bg = colors.color3 },
    LspSagaCodeActionBorder = { fg = colors.color7, bg = colors.color3 },
  },
})

