if status is-interactive
    set -g fish_greeting ""

    # 路径
    fish_add_path ~/.local/bin
    fish_add_path ~/.local/share/fnm
    fish_add_path ~/.cargo/bin

    # 初始化 (顺序不分先后)
    starship init fish | source
    zoxide init fish --cmd cd | source
    fnm env --use-on-cd | source

    # 别名 (Alias)
    alias v="nvim"
    alias bat="batcat"
    alias fd="fdfind"
    alias x="tmux"
    alias t="task"

    # 常用 eza 组合
    alias l="eza --icons"
    alias ll="eza -l --icons --git"
    alias la="eza -la --icons --git"
end

# 函数定义
function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if read -z cwd <"$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end

function ls --wraps eza
    eza --icons $argv
end

function ch
    curl cheat.sh/$argv[1]
end

function nh
    nohup $argv >/dev/null 2>&1 &
end

function dv
    ddgr --unsafe -x --np $argv | v +"syntax on | set ft = rst wrap"
end
