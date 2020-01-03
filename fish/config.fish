set -U EDITOR vim

set -x -U DOTFILES ~/dotfiles

if test -e ~/.config/fish/work.fish
    source ~/.config/fish/work.fish
end

function fish_greeting
end

function fish_prompt
    # define git functions if not already defined
    if not set -q -g __fish_git_functions_defined
        set -g __fish_git_functions_defined
        function _git_branch_name
            echo (git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
        end
        function _is_git_dirty
            echo (git status -s --ignore-submodules=dirty ^/dev/null)
        end
    end

    # define hostname if not already defined
    if not set -q __fish_prompt_hostname
        set -g __fish_prompt_hostname (hostname|cut -d . -f 1)
    end

    # shortcuts for colors
    set -l cyan (set_color cyan)
    set -l red (set_color red)
    set -l kubeblue (set_color 326CE5)
    set -l orange (set_color FFA500)
    set -l green (set_color 008000)
    set -l normal (set_color normal)
    set -l grey (set_color 878787)
    set -l lblue (set_color 00AAFF)

    # set path
    set _cwd $cyan(prompt_pwd)
    set -l cwd "$_cwd "

    # if git branch
    if [ (_git_branch_name)  ]
        set git_info $orange"("(_git_branch_name)")"
        # if dirty
        if [ (_is_git_dirty)  ]
            set -l dirty "$red ✗"
            set git_info "$git_info$dirty "
        else
            set git_info "$git_info "
        end
    end

    echo -s "$prompt"
    echo -s "$cwd$git_info"
    echo -e $normal'$ '
end

function srcfish
    source ~/.config/fish/config.fish
end

function dot
    cd ~/dotfiles; and ls
end

function gdf
    git diff $argv
end

function gbr
    git branch
end

function gst
    git status
end
