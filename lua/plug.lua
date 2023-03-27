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
  use { 'Shatur/neovim-ayu' }                     -- colorscheme
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
  
  -- Mason. For setting up LSP servers etc.
  use 'williamboman/mason.nvim'    
  use 'williamboman/mason-lspconfig.nvim'

  -- A couple of RUST lsp plugins
  use 'neovim/nvim-lspconfig' 
  use 'simrat39/rust-tools.nvim'


-- Completion framework:
    use 'hrsh7th/nvim-cmp' 

    -- LSP completion source:
    use 'hrsh7th/cmp-nvim-lsp'

    -- Useful completion sources:
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-vsnip'                             
    use 'hrsh7th/cmp-path'                              
    use 'hrsh7th/cmp-buffer'                            
    use 'hrsh7th/vim-vsnip'                   

    use 'nvim-treesitter/nvim-treesitter'
    use 'puremourning/vimspector' --Debugger
-- Chat GPT
use({
  "jackMort/ChatGPT.nvim",
    config = function()
      require("chatgpt").setup({
        -- optional configuration
      })
    end,
    requires = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    }
})
end)
