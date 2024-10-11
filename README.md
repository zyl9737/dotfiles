# My personal config for some tools

All the shortcuts are recorded on **[here](https://zhengyulong.top/article/notion-short-key)**.

All configuration files are in the repository.

## 1. tmux

Reference:   [Oh-My-Tmux](https://github.com/gpakosz/.tmux)

### Installation

Requirements:

* tmux **`>= 2.6`** running inside Linux, Mac, OpenBSD, Cygwin or WSL
* awk, perl (with Time::HiRes support) and sed
* outside of tmux, `$TERM` must be set to `xterm-256color`

⚠️ Before installing, you may want to backup your existing configuration.

You can install Oh my tmux! at any of the following locations:

* `~`
* `$XDG_CONFIG_HOME/tmux`
* `~/.config/tmux`

Installing in `~`:

```
$ cd
$ git clone https://github.com/gpakosz/.tmux.git
$ ln -s -f .tmux/.tmux.conf
$ cp .tmux/.tmux.conf.local .
```

### Change

In tmux session, you can `<prefix e>` to change the config that is more suitable for youself. For example:

```bash
tmux_conf_theme_pane_border="$tmux_conf_theme_colour_3" # Make the boundary lines clearer.
```

## 2. AHKHotKey

Requirements:

- AutoHotKey `=1.1` on windows, you can download [here](https://autohotkey.com/download/1.1/).   

## 3. VSCode(enhanced by VSCodeVim)

Reference: [Set up VSCode Like NeoVim](https://www.youtube.com/watch?v=JRnwt7oT1ZE)

Requirements:

- VSCodeVim

### Change

Requirements:

- Code Ace Jumper. With this plugin, I can quickly locate words by pressing `Ctrl+;`.
- Projects Manager. With this plugin, I can show my projects list by `alt + shift + p`

## 4. NeoVim

I use this [Integration package](https://github.com/archibate/vimrc) for better C++ programing.

there are still much to be improved.
