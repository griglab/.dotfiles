local packer = require('packer')

return packer.startup(function(use)

    -- Packer managing itself
    use 'wbthomason/packer.nvim'

    -- Treesitter (language parser)
    use {
	    'nvim-treesitter/nvim-treesitter',
	    run = function()
		    require('nvim-treesitter.install').update({ with_sync = true })
	    end
    }

    -- Colorscheme
    use { 'andersevenrud/nordic.nvim' }

    use { 'rktjmp/lush.nvim' }

    -- Autopairs
    use { 'windwp/nvim-autopairs' }

end)
