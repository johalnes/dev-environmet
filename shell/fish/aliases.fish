# shell and editor
alias vi nvim
alias vim nvim
alias rr "exec $SHELL"
alias e clear
alias s z
alias fun functions
alias m "mkdir -p"
alias top btm
alias ldr lazydocker

# rotz dotfile tool
alias di "rotz install"
alias dl "rotz link"
alias dlf "rotz link --force"
alias fp "$EDITOR $__fish_config_dir/fish_plugins"

# git tools
alias gdc "git dft --cached"
alias gdh "git dft HEAD"
alias gcob "git checkout -b"
alias gdto "git difftool"
alias gdtoc "git difftool --cached"
alias gho "gh repo view -w"
alias ghd "gh dash"
alias lg lazygit


# media and misc
alias bu "brew update and brew upgrade"
alias cat bat
alias cc cookiecutter

# python
alias venv "uv venv .venv"
alias va "source .venv/bin/activate.fish"
alias da deactivate
alias pipr "uv pip install -r requirements.txt"
alias piprd "uv pip install -r pyproject.toml --extra dev"
alias pcd "uv pip compile pyprpoject.toml --extra dev -o requirements.txt"
alias pcu "uv pip compile -U requirements.in -o requirements.txt"
alias psy "uv pip sync requirements.txt"
alias pyt pytest


# lsd
alias l "lsd -lag"
alias ls lsd
alias ll "lsd -l"
alias lg "lsd -lg"
alias la "lsd -a"
alias lla "lsd -la"
alias lt "lsd --tree"


alias cd z

# frontend
alias ni "pnpm i"
alias nu "pnpm up"
alias nd "pnpm dev"
alias nb "pnpm build"
alias bi "bun install"
alias bd "bun dev"
alias ad "astro dev"
