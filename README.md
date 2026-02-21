use `stow` to manage the configuration files.

## OS: Ubuntu 22.04 LTS
- Neovim: adapted from Lazyvim with a little bit of my own configuration.
  - use LazyExtras: some extra plugins that I use, such as copilot, chatgpt, etc.
  - change the theme to tokyo night storm.

- Tmux: adapted from ohmyTmux, just change the borderlines color.
  - `tmux_conf_theme_pane_border="$tmux_conf_theme_colour_3" # Make the boundary lines clearer.`

- bash: additional functions and aliases: add additional `.bash_syc` file for more personal configuration. 
  - fzf 
  - nvm 
  - cargo
  - starship
  add `[ -f ~/.bash_syc ] && source ~/.bash_syc` to `.bashrc` to load the additional configuration file.

## OS: Windows 11

### AHKHotKey

Requirements:

- AutoHotKey `=1.1` on windows, you can download [here](https://autohotkey.com/download/1.1/).
