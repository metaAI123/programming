return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- monokai theme
  use 'tanvirtin/monokai.nvim'
  require('monokai').setup { palette = require('monokai').pro }
  -- nvim-tree
  use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }
  require'nvim-tree'.setup {
  -- 不显示 git 状态图标
  git = {
     enable = false
    }
  }
  -- bufferline 
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
  vim.opt.termguicolors = true
  require("bufferline").setup {
    options = {
        -- 使用 nvim 内置lsp
        diagnostics = "nvim_lsp",
        -- 左侧让出 nvim-tree 的位置
        offsets = {{
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left"
        }}
    }
  }
  use {
    'glacambre/firenvim',
    run = function() vim.fn['firenvim#install'](0) end 
  }
   -- LSP
end)

