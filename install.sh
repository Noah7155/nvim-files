sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

cp init.lua ~/.config/nvim/
cp lua/diagnostics.lua lua/lspconfig-config.lua lua/lspconfig.lua lua/lspconfigs.config lua/lualine-config.lua lua/nvim-cmp-config.lua lua/nvim-tree-config.lua lua/telescope-config.lua lua/treesitter-config.lua ~/.config/nvim/lua/
