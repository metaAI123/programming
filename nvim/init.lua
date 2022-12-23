require('init-packer')
require('keymap')
require('LSP_config')
require('nvim_cmp')
--使用相对行号
vim.wo.number = true
vim.wo.relativenumber = true
--缩进2个空格等于一个Tab
vim.o.tabstop = 2
vim.bo.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftround = true
-- >> <<时移动长度
vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2
-- 新行对齐当前行，空格替代tab
vim.o.expandtab = true
vim.bo.expandtab = true
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true
--搜索大小写不敏感，除非包含大写
vim.o.ignorecase = true
vim.o.smartcase = true
--搜索不要高亮
vim.o.hlsearch = false
--边输入边搜索
vim.o.incsearch = true
-- 命令行高为2，提供足够的显示空间
vim.o.cmdheight = 2
--当文件被外部程序修改时，自动加载
vim.o.autoread = true
vim.bo.autoread = true
--自动补全不自动选中
vim.g.completeopt = "menu,menuone,noselect,noinsert"
--样式
vim.o.termguicolors = true
vim.opt.termguicolors = true
-- 不可见字符的显示，这里只把空格显示为一个点
vim.o.list = true
vim.o.listchars = "space:·"
--补全增强
vim.o.wildmenu = true
--高亮所在行
vim.o.cursorline = true
--显示左侧图标指示列
vim.wo.signcolumn = "yes"
--右侧参考线，超过表示代码太长了，考虑换行
vim.wo.colorcolumn = "80"
--按键映射
vim.g.mapleader = ' '


