local packer = require('packer')

return packer.startup(function(use)

    -- Packer managing itself
    use 'wbthomason/packer.nvim'

    -- Lua functions for neovim
    use "nvim-lua/plenary.nvim"

    -- Treesitter (language parser)
    use {
	    'nvim-treesitter/nvim-treesitter',
	    run = function()
		    require('nvim-treesitter.install').update({with_sync = true})
	    end
    }

    -- Telescope (fuzzi finder)
    use {'nvim-telescope/telescope.nvim', tag = '0.1.0'}
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}

    -- Colors and icons
    use 'andersevenrud/nordic.nvim'
    use 'kyazdani42/nvim-web-devicons'

    -- Autopairs
    use 'windwp/nvim-autopairs'

end)
