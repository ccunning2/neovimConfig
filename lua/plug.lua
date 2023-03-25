-- [[ plug.lua ]]

return require('packer').startup(function(use)
  -- [[ Plugins Go Here ]]
  use {
      'nvim-tree/nvim-tree.lua',
      requires = {
        'nvim-tree/nvim-web-devicons', -- optional
      },
    }
     -- [[ Theme ]]
  use { 'mhinz/vim-startify' }                       -- start screen
  use { 'DanilaMihailov/beacon.nvim' }               -- cursor jump
  use {
    'nvim-lualine/lualine.nvim',                     -- statusline
    requires = {'kyazdani42/nvim-web-devicons',
                opt = true}
  }
  use { 'Mofiqul/dracula.nvim' }                     -- colorscheme
  -- [[ Dev ]]
  use {
    'nvim-telescope/telescope.nvim',                 -- fuzzy finder
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { 'majutsushi/tagbar' }                        -- code structure
  use { 'Yggdroot/indentLine' }                      -- see indentation
  use { 'tpope/vim-fugitive' }                       -- git integration
  use { 'junegunn/gv.vim' }                          -- commit history
  use { 'windwp/nvim-autopairs' }                    -- auto close brackets, etc.
  use 'voldikss/vim-floaterm' --Terminal.. Just mapping toggle to F7 for now
  use 'tpope/vim-commentary' --Comments
  use 'tpope/vim-surround' --Vim surround!
end)
