use `stow` to manage the configuration files.

## OS: Ubuntu 24.04 LTS
- Neovim: adapted from Lazyvim with a little bit of my own configuration.
  - use LazyExtras: some extra plugins that I use, such as copilot, avante, etc.
  - change the theme to tokyo night storm.

- Tmux: a simple configuration for tmux, with ctrl-a as the prefix key, and some simple configuration for the status bar.

- bash: additional functions and aliases: add additional `.bash_syc` file for more personal configuration. 
  - fzf 
  - nvm 
  - cargo
  - starship
  - yazi

  add `[ -f ~/.bash_syc ] && source ~/.bash_syc` to `.bashrc` to load the additional configuration file.

## OS: Windows 11

### AHKHotKey

Requirements:

- AutoHotKey `=1.1` on windows, you can download [here](https://autohotkey.com/download/1.1/).
