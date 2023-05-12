sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

cp init.lua ~/.config/nvim/
mkdir ~/.config/nvim/lua
cp diagnostics.lua lspconfig-config.lua lspconfig.lua lspconfigs.config lualine-config.lua nvim-cmp-config.lua nvim-tree-config.lua telescope-config.lua treesitter-config.lua ~/.config/nvim/lua/
