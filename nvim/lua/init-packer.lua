return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  --括号自动补全
  use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  --代码自动补全
  use {
    "hrsh7th/nvim-cmp",
    -- commit = "4f1358e659d51c69055ac935e618b684cf4f1429",
  } -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "neovim/nvim-lspconfig"
  use "hrsh7th/cmp-nvim-lsp"
  --主题配置
  use 'folke/tokyonight.nvim'
  --显示缩进层级
  use "lukas-reineke/indent-blankline.nvim"
  --高亮光标所在单词
  use "RRethy/vim-illuminate"
  --markdown预览
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
  --图标
  use 'ryanoasis/vim-devicons'
  --bufferline
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'ryanoasis/vim-devicons'}
  require("bufferline").setup{}
  --statusline
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'ryanoasis/vim-devicons', opt = true }
  }
  require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'moonfly',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
 }
  --颜色直接显示
  use 'NvChad/nvim-colorizer.lua'
    require("colorizer").setup {
      filetypes = { "*" },
      user_default_options = {
        RGB = true, -- #RGB hex codes
        RRGGBB = true, -- #RRGGBB hex codes
        names = true, -- "Name" codes like Blue or blue
        RRGGBBAA = false, -- #RRGGBBAA hex codes
        AARRGGBB = false, -- 0xAARRGGBB hex codes
        rgb_fn = false, -- CSS rgb() and rgba() functions
        hsl_fn = false, -- CSS hsl() and hsla() functions
        css = false, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
        css_fn = false, -- Enable all CSS *functions*: rgb_fn, hsl_fn
        -- Available modes for `mode`: foreground, background,  virtualtext
        mode = "background", -- Set the display mode.
        -- Available methods are false / true / "normal" / "lsp" / "both"
        -- True is same as normal
        tailwind = false, -- Enable tailwind colors
        -- parsers can contain values used in |user_default_options|
        sass = { enable = false, parsers = { css }, }, -- Enable sass colors
        virtualtext = "■",
      },
      -- all the sub-options of filetypes apply to buftypes
      buftypes = {},
  }
  end)
  

