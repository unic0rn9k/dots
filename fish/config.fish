zoxide init fish | source
gh completion -s fish | source

alias find="fd"
alias du="dust"
alias cat="bat"
alias grep="rg"
alias icat="kitty +kitten icat"
alias top="ytop -m"
# alias plantuml="env DISPLAY='wayland-1' plantuml"
alias ls="exa --icons --git-ignore --git"
alias tree="ls --tree"
alias topgrade="cpulimit -l 40 topgrade"

alias :q="exit"
alias ' fs'='exit'

export XDG_RUNTIME_DIR=/tmp/xdg_runtime
export XDG_SESSION_TYPE=wayland
export GPG_AGENT_INFO=/tmp/xdg_runtime/keyring/
export GPG_TTY=(tty)

# CC  = /usr/bin/clang
# CPP = /usr/bin/clang -E
# CXX = /usr/bin/clang++
# LD  = /usr/bin/mold
# AR  = /usr/bin/llvm-ar
# AS  = /usr/bin/llvm-as

#export DOT_SAGE = ~/.config/sage/
if [ (tty) = /dev/tty1 ]
    if [ ! -d "$XDG_RUNTIME_DIR" ]
        mkdir -m 0700 "$XDG_RUNTIME_DIR"
    end
    #dbus-launch --sh-syntax --exit-with-session sway
    dbus-launch --sh-syntax --exit-with-session Hyprland
else if [ -z $TMUX ]
    exec tmux && exit
end

complete -c flamegraph -n __fish_use_subcommand -s p -l pid -d 'Profile a running process by pid'
complete -c flamegraph -n __fish_use_subcommand -l completions -d 'Generate shell completions for the given shell'
complete -c flamegraph -n __fish_use_subcommand -s o -l output -d 'Output file, flamegraph.svg if not present'
complete -c flamegraph -n __fish_use_subcommand -s F -l freq -d 'Sampling frequency'
complete -c flamegraph -n __fish_use_subcommand -s c -l cmd -d 'Custom command for invoking perf/dtrace'
complete -c flamegraph -n __fish_use_subcommand -l notes -d 'Set embedded notes in SVG'
complete -c flamegraph -n __fish_use_subcommand -l min-width -d 'Omit functions smaller than <FLOAT> pixels'
complete -c flamegraph -n __fish_use_subcommand -l image-width -d 'Image width in pixels'
complete -c flamegraph -n __fish_use_subcommand -l palette -d 'Color palette' -r -f -a "hot mem io red green blue aqua yellow purple orange wakeup java perl js rust"
complete -c flamegraph -n __fish_use_subcommand -l skip-after
complete -c flamegraph -n __fish_use_subcommand -l perfdata
complete -c flamegraph -n __fish_use_subcommand -s v -l verbose -d 'Print extra output to help debug problems'
complete -c flamegraph -n __fish_use_subcommand -l open -d 'Open the output .svg file with default program'
complete -c flamegraph -n __fish_use_subcommand -l root -d 'Run with root privileges (using `sudo`)'
complete -c flamegraph -n __fish_use_subcommand -l deterministic -d 'Colors are selected such that the color of a function does not change between runs'
complete -c flamegraph -n __fish_use_subcommand -s i -l inverted -d 'Plot the flame graph up-side-down'
complete -c flamegraph -n __fish_use_subcommand -l reverse -d 'Generate stack-reversed flame graph'
complete -c flamegraph -n __fish_use_subcommand -l flamechart -d 'Produce a flame chart (sort by time, do not merge stacks)'
complete -c flamegraph -n __fish_use_subcommand -l no-inline -d 'Disable inlining for perf script because of performance issues'
complete -c flamegraph -n __fish_use_subcommand -s h -l help -d 'Prints help information'
complete -c flamegraph -n __fish_use_subcommand -s V -l version -d 'Prints version information'

source (/usr/bin/starship init fish --print-full-init | psub)
fzf_configure_bindings --directory=\cf

## >>> mamba initialize >>>
## !! Contents within this block are managed by 'mamba init' !!
#set -gx MAMBA_EXE /usr/bin/micromamba
#set -gx MAMBA_ROOT_PREFIX /home/unic0rn9k/micromamba/envs/evcxr_env
#eval /usr/bin/micromamba shell hook --shell fish --prefix /home/unic0rn9k/micromamba/envs/evcxr_env | source
## <<< mamba initialize <<<
#
## oh-my-posh init fish | source
## oh-my-posh init fish --config ~/bubblesextra.omp.json | source
#
#set -gx PNPM_HOME "/home/unic0rn9k/.local/share/pnpm"
#set -gx PATH "$PNPM_HOME" $PATH
#
#micromamba activate base
