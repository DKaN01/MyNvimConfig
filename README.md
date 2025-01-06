# Nvim config
![LOGO](res/screen.png)

This simple neovim config

----

## Dependencies
* C compiler for `nvim-treesitter`
* Cargo for `blink.cmp`
* NodeJS
* Neovim
* Git
* ripgrep
* lazygit


### How install
* Clone repo to neovim config folder `git clone https://github.com/DKaN01/MyNvimConfig.git <config folder>`
    * `AppData/Local/nvim` windows
    * `~/.config/nvim` unix
* Launch neovim and `lazy` install plugins
* After need compile `blink.cmp`
    * go to `lazy/blink.cmp`
    * run `cargo build --release`

----

#### Other
Keymap write in `lua/keymaps.lua`<br>
Plugin list in `lua/plugins.lua`<br>
For install lsp write in normal mode `.pm`, find your lsp server and press `i`<br>
***Bro just see files***
