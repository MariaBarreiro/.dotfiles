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
        bg = "#2F3E46",
        fg = "#F0EAD2",
        selection = "#355070",
        comment = "#DDE5B6",
        red = "#6C584C",
        orange = "#DDE5B6",
        yellow = "#F0EAD2",
        green = "#F0EAD2",
        purple = "#DDE5B6",
        cyan = "#F0EAD2",
        pink = "#ADC178",
        bright_red = "#6C584C",
        bright_green = "#F0EAD2",
        bright_yellow = "#F0EAD2",
        bright_blue = "#DDE5B6",
        bright_magenta = "#6C584C",
        bright_cyan = "#F0EAD2",
        bright_white = "#F0EAD2",
        menu = "#ADC178",
        visual = "#355070",
        gutter_fg = "#DDE5B6",
        nontext = "#ADC178",
        white = "#F0EAD2",
        black = "#1B1B2F",
      },
      -- show the '~' characters after the end of buffers
      show_end_of_buffer = true,    -- default false
      -- use transparent background
      transparent_bg = true,        -- default false
      -- set custom lualine background color
      lualine_bg_color = "#2F3E46", -- default nil
      -- set italic comment
        italic_comment = true,        -- default false
      -- overrides the default highlights with table see `:h synIDattr`
      overrides = {
        Normal = { bg = "NONE" },
        FloatBorder = { fg = "#F0EAD2", bg = "#2F3E46" },
        NonText = { bg = "#ADC178" },
        Search = { bg = "#355070" },
        CurSearch = { bg = "#355070", fg = "#6C584C" },
        WhichKey = { fg = "#F0EAD2" },
        WhichKeyFloat = { bg = "#ADC178" },
        WhichKeySeparator = { fg = "#DDE5B6" },
        TelescopeNormal = { bg = "#2F3E46" },
        TelescopeSelection = { bg = "#DDE5B6", fg = "#2F3E46" },
        TelescopePreviewBorder = { fg = "#F0EAD2" },
        TelescopeResultsBorder = { fg = "#F0EAD2" },
        TelescopePromptBorder = { fg = "#F0EAD2" },
        TelescopeBorder = { fg = "#F0EAD2" },
        TermCursor = { fg = "#F0EAD2" },
        NormalFloat = { bg = "#2F3E46" },
        WinSeparator = { fg = "#DDE5B6", bg = "#2F3E46" },
        NotifyBackground = { bg = "#ADC178" },
        NoiceCmdlinePopupBorder = { fg = "#F0EAD2" },
        NoiceCmdlineIcon = { fg = "#F0EAD2" },
        BufferLineFill = { bg = "#ADC178" },
        StatusLine = { bg = "#2f3e46" },
        NvimTreeWinSeparator = { fg = "#DDE5B6", bg = "#ADC178" },
        NvimTreeFolderArrowClosed = { fg = "#F0EAD2" },
        NvimTreeFolderArrowOpen = { fg = "#F0EAD2" },
        NvimTreeIndentMarker = { fg = "#DDE5B6" },
        NvimTreeNormal = { bg = "NONE", ctermbg = "NONE" },
        NvimTreeRootFolder = { bg = "NONE", ctermbg = "NONE", fg = "#F0EAD2" },
        CursorLineNr = { fg = "#F0EAD2" },
        NvimTreeLineNr = { fg = "#F0EAD2" },
        LineNr = { fg = "#DDE5B6" },
        LspFloatWinBorder = { fg = "#F0EAD2" },
        LspFloatBorder = { fg = "#F0EAD2" },
        LspInfoBorder = { fg = "#F0EAD2" },
        TreesitterContextBottom = { underline = true, sp = "#DDE5B6" },
        TreesitterContextLineNumberBottom = { underline = true, sp = "#DDE5B6" },
        NeoTreeBufferNumber = { fg = "#F0EAD2" },
        NeoTreeCursorLine = { fg = "#F0EAD2", bg = "#ADC178", underline = true },
        NeoTreeTabActive = { fg = "#F0EAD2", bold = true },
        NeoTreeTabSeparatorActive = { bg = "#374268", fg = "#ADC178" },
        NeoTreeRootName = { fg = "#F0EAD2", bold = true, italic = true },
        NeoTreeIndentMarker = { fg = "#DDE5B6" },
        NeoTreeSignColumn = { fg = "#F0EAD2" },
        NeoTreeFileIcon = { fg = "#45462A", bold = true },
        NeoTreeDotfile = { fg = "#DDE5B6" },
        NeoTreeGitUnstaged = { fg = "#DDE5B6" },
        NeoTreeGitModified = { fg = "#DDE5B6" },
        NeoCodeiumLabel = { bg = "#355070", fg = "#ADC178" },
        BlinkCmpMenu = { bg = "#ADC178" },
        BlinkCmpScrollBarThumb = { fg = "#647268" },
        BlinkCmpScrollBarGutter = { bg = "#ADC178" },
        BlinkCmpDocBorder = { fg = "#F0EAD2" },
        BlinkCmpMenuBorder = { fg = "#F0EAD2" },
        BlinkCmpMenuSelection = { fg = "#F0EAD2", bg = "#DDE5B6", bold = true },
        BlinkCmpGhostText = { fg = "#DDE5B6", undercurl = true },

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

