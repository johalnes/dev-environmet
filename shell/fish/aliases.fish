# shell and editor
alias rr "exec $SHELL"
alias e clear
alias s z
alias m "mkdir -p"
alias top btm

# rotz dotfile tool
alias fp "$EDITOR $__fish_config_dir/fish_plugins"

# git tools
alias gho "gh repo view -w"
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
alias ll "lsd -l"
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
