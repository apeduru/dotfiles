set -U EDITOR vim

set -x -U DOTFILES ~/dotfiles
set -x -U WOTFILES ~/wotfiles

set -x -U JOURNAL_PATH $HOME/journal

set -x -U GPG_TTY (tty)

# shortcuts for custom colors
# kubeblue 326CE5
# orange FFA500
# green 008000
# grey 878787
# lblue 00AAFF

set fish_prompt_pwd_dir_length 999

set -g __fish_git_prompt_showdirtystate 1
set -g __fish_git_prompt_showcolorhints 1
set -g __fish_git_prompt_color_branch FFA500 # orange
set -g __fish_git_prompt_char_dirtystate "✗"

if test -e ~/.config/fish/work.fish
    source ~/.config/fish/work.fish
end

function ...
    cd ../../
end

function ....
    cd ../../../
end

function .....
    cd ../../../../
end

function unset
  set --erase $argv
end

