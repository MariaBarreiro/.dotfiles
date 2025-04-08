return {
  "Mofiqul/dracula.nvim",
  priority = 1000, -- Make sure it loads before all other plugins
  config = function()
    local dracula = require("dracula")
    dracula.setup({
      styles = {
        sidebars = "transparent", -- style for sidebars, see below
      },
      -- customize dracula color palette
      colors = {
        bg = "#6d597a",
        fg = "#eaac8b",
        selection = "#355070",
        comment = "#b56576",
        red = "#e56b6f",
        orange = "#b56576",
        yellow = "#eaac8b",
        green = "#eaac8b",
        purple = "#b56576",
        cyan = "#eaac8b",
        pink = "#e56b6f",
        bright_red = "#e56b6f",
        bright_green = "#eaac8b",
        bright_yellow = "#eaac8b",
        bright_blue = "#b56576",
        bright_magenta = "#e56b6f",
        bright_cyan = "#eaac8b",
        bright_white = "#eaac8b",
        menu = "#6d597a",
        visual = "#355070",
        gutter_fg = "#b56576",
        nontext = "#6d597a",
        white = "#eaac8b",
        black = "#6d597a",
      },
      -- show the '~' characters after the end of buffers
      show_end_of_buffer = true,    -- default false
      -- use transparent background
      transparent_bg = true,        -- default false
      -- set custom lualine background color
      lualine_bg_color = "#6d597a", -- default nil
      -- set italic comment
      italic_comment = true,        -- default false
      -- overrides the default highlights with table see `:h synIDattr`
      overrides = {
        Normal = { bg = "NONE" },
        FloatBorder = { fg = "#eaac8b", bg = "#6d597a" },
        NonText = { bg = "#6d597a" },
        Search = { bg = "#355070" },
        CurSearch = { bg = "#355070", fg = "#e56b6f" },
        WhichKey = { fg = "#eaac8b" },
        WhichKeyFloat = { bg = "#6d597a" },
        WhichKeySeparator = { fg = "#b56576" },
        TelescopeNormal = { bg = "#6d597a" },
        TelescopeSelection = { bg = "#b56576", fg = "#6d597a" },
        TelescopePreviewBorder = { fg = "#eaac8b" },
        TelescopeResultsBorder = { fg = "#eaac8b" },
        TelescopePromptBorder = { fg = "#eaac8b" },
        TelescopeBorder = { fg = "#eaac8b" },
        TermCursor = { fg = "#eaac8b" },
        NormalFloat = { bg = "#6d597a" },
        WinSeparator = { fg = "#b56576", bg = "#6d597a" },
        NotifyBackground = { bg = "#6d597a" },
        NoiceCmdlinePopupBorder = { fg = "#eaac8b" },
        NoiceCmdlineIcon = { fg = "#eaac8b" },
        BufferLineFill = { bg = "#6d597a" },
        StatusLine = { bg = "#6d597a" },
        NvimTreeWinSeparator = { fg = "#b56576", bg = "#6d597a" },
        NvimTreeFolderArrowClosed = { fg = "#eaac8b" },
        NvimTreeFolderArrowOpen = { fg = "#F3E3B2" },
        NvimTreeIndentMarker = { fg = "#b56576" },
        NvimTreeNormal = { bg = "NONE", ctermbg = "NONE" },
        NvimTreeRootFolder = { bg = "NONE", ctermbg = "NONE", fg = "#eaac8b" },
        CursorLineNr = { fg = "#eaac8b" },
        NvimTreeLineNr = { fg = "#eaac8b" },
        LineNr = { fg = "#b56576" },
        LspFloatWinBorder = { fg = "#eaac8b" },
        LspFloatBorder = { fg = "#eaac8b" },
        LspInfoBorder = { fg = "#eaac8b" },
        TreesitterContextBottom = { underline = true, sp = "#b56576" },
        TreesitterContextLineNumberBottom = { underline = true, sp = "#b56576" },
        NeoTreeBufferNumber = { fg = "#eaac8b" },
        NeoTreeCursorLine = { fg = "#eaac8b", bg = "#6d597a", underline = true },
        NeoTreeTabActive = { fg = "#eaac8b", bold = true },
        NeoTreeTabSeparatorActive = { bg = "#374268", fg = "#6d597a" },
        NeoTreeRootName = { fg = "#eaac8b", bold = true, italic = true },
        NeoTreeIndentMarker = { fg = "#b56576" },
        NeoTreeSignColumn = { fg = "#eaac8b" },
        NeoTreeFileIcon = { fg = "45462A", bold = true },
        NeoTreeDotfile = { fg = "#b56576" },
        NeoTreeGitUnstaged = { fg = "#b56576" },
        NeoTreeGitModified = { fg = "#b56576" },
        NeoCodeiumLabel = { bg = "#355070", fg = "#6d597a" },
        BlinkCmpMenu = { bg = "#6d597a" },
        BlinkCmpScrollBarThumb = { fg = "#647268" },
        BlinkCmpScrollBarGutter = { bg = "#6d597a" },
        BlinkCmpDocBorder = { fg = "#eaac8b" },
        BlinkCmpMenuBorder = { fg = "#eaac8b" },
        BlinkCmpMenuSelection = { fg = "#eaac8b", bg = "#b56576", bold = true },
        BlinkCmpGhostText = { fg = "#b56576", undercurl = true },

      },

      -- You can use overrides as table like this
      -- overrides = {
      --   NonText = { fg = "white" }, -- set NonText fg to white
      --   NvimTreeIndentMarker = { link = "NonText" }, -- link to NonText highlight
      --   Nothing = {} -- clear highlight of Nothing
      -- },
      -- Or you can also use it like a function to get color from theme
      -- overrides = function (colors)
      --   return {
      --     NonText = { fg = colors.white }, -- set NonText fg to white of theme
      --   }
      -- end,
    })
    -- Load colorscheme
    vim.cmd("colorscheme dracula")
    vim.api.nvim_set_hl(0, "@constructor", { bold = true })
    vim.api.nvim_set_hl(0, "@constant", { bold = true })
    vim.api.nvim_set_hl(0, "@lsp.type.property", { italic = true })

  end,
}

