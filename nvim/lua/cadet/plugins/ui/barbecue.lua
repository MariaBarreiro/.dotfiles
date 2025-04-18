return {
  "utilyre/barbecue.nvim",
  name = "barbecue",
  version = "*",
  dependencies = {
    "SmiteshP/nvim-navic",
    "nvim-tree/nvim-web-devicons", -- optional dependency
  },
  opts = {
    ---Whether to attach navic to language servers automatically.
    ---
    ---@type boolean
    attach_navic = true,

    ---Whether to create winbar updater autocmd.
    ---
    ---@type boolean
    create_autocmd = true,

    ---Buftypes to enable winbar in.
    ---
    ---@type string[]
    include_buftypes = { "" },

    ---Filetypes not to enable winbar in.
    ---
    ---@type string[]
    exclude_filetypes = { "netrw", "toggleterm" },

    modifiers = {
      ---Filename modifiers applied to dirname.
      ---
      ---See: `:help filename-modifiers`
      ---
      ---@type string
      dirname = ":~:.",

      ---Filename modifiers applied to basename.
      ---
      ---See: `:help filename-modifiers`
      ---
      ---@type string
      basename = "",
    },

    ---Whether to display path to file.
    ---
    ---@type boolean
    show_dirname = true,

    ---Whether to display file name.
    ---
    ---@type boolean
    show_basename = true,

    ---Whether to replace file icon with the modified symbol when buffer is
    ---modified.
    ---
    ---@type boolean
    show_modified = false,

    ---Get modified status of file.
    ---
    ---NOTE: This can be used to get file modified status from SCM (e.g. git)
    ---
    ---@type fun(bufnr: number): boolean
    modified = function(bufnr) return vim.bo[bufnr].modified end,

    ---Whether to show/use navic in the winbar.
    ---
    ---@type boolean
    show_navic = true,

    ---Get leading custom section contents.
    ---
    ---NOTE: This function shouldn't do any expensive actions as it is run on each
    ---render.
    ---
    ---@type fun(bufnr: number, winnr: number): barbecue.Config.custom_section
    lead_custom_section = function() return " " end,

    ---@alias barbecue.Config.custom_section
    ---|string # Literal string.
    ---|{ [1]: string, [2]: string? }[] # List-like table of `[text, highlight?]` tuples in which `highlight` is optional.
    ---
    ---Get custom section contents.
    ---
    ---NOTE: This function shouldn't do any expensive actions as it is run on each
    ---render.
    ---
    ---@type fun(bufnr: number, winnr: number): barbecue.Config.custom_section
    custom_section = function() return " " end,

    ---@alias barbecue.Config.theme
    ---|'"auto"' # Use your current colorscheme's theme or generate a theme based on it.
    ---|string # Theme located under `barbecue.theme` module.
    ---|barbecue.Theme # Same as '"auto"' but override it with the given table.
    ---
    ---Theme to be used for generating highlight groups dynamically.
    ---
    ---@type barbecue.Config.theme
    theme = {
      normal = { fg = "#EAAC8B" },
      ellipsis = { fg = "#b56576" },
      separator = { fg = "#E56B6F" },
      modified = { fg = "#355070" },

      dirname = { fg = "#b56576" },
      basename = { fg = "#EAAC8B", bold = true },
      context = { fg = "#E56B6F" },

      context_file = { fg = "#EAAC8B" },
      context_module = { fg = "#E56B6F" },
      context_namespace = { fg = "#E56B6F" },
      context_package = { fg = "#CE5641" },
      context_class = { fg = "#E56B6F" },
      context_method = { fg = "#b56576" },
      context_property = { fg = "#EAAC8B" },
      context_field = { fg = "#EAAC8B" },
      context_constructor = { fg = "#b56576" },
      context_enum = { fg = "#CE5641" },
      context_interface = { fg = "#E56B6F" },
      context_function = { fg = "#b56576" },
      context_variable = { fg = "#EAAC8B" },
      context_constant = { fg = "#CE5641" },
      context_string = { fg = "#E56B6F" },
      context_number = { fg = "#b56576" },
      context_boolean = { fg = "#b56576" },
      context_array = { fg = "#E56B6F" },
      context_object = { fg = "#E56B6F" },
      context_key = { fg = "#CE5641" },
      context_null = { fg = "#355070" },
      context_enum_member = { fg = "#EAAC8B" },
      context_struct = { fg = "#b56576" },
      context_event = { fg = "#CE5641" },
      context_operator = { fg = "#E56B6F" },
      context_type_parameter = { fg = "#b56576" },
    },

    ---Whether context text should follow its icon's color.
    ---
    ---@type boolean
    context_follow_icon_color = true,

    symbols = {
      ---Modification indicator.
      ---
      ---@type string
      modified = "●",

      ---Truncation indicator.
      ---
      ---@type string
      ellipsis = "…",

      ---Entry separator.
      ---
      ---@type string
      separator = "",
    },

    ---@alias barbecue.Config.kinds
    ---|false # Disable kind icons.
    ---|table<string, string> # Type to icon mapping.
    ---
    ---Icons for different context entry kinds.
    ---
    ---@type barbecue.Config.kinds
    kinds = {
      File = "",
      Module = "",
      Namespace = "",
      Package = "",
      Class = "",
      Method = "",
      Property = "",
      Field = "",
      Constructor = "",
      Enum = "",
      Interface = "",
      Function = "",
      Variable = "",
      Constant = "",
      String = "",
      Number = "",
      Boolean = "",
      Array = "",
      Object = "",
      Key = "",
      Null = "",
      EnumMember = "",
      Struct = "",
      Event = "",
      Operator = "",
      TypeParameter = "",
    },
  }
}

