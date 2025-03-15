# Set terminal environment variables
## Set default editor to nvim
set -x -g EDITOR hx
## Set default shell to fish
set -x -g SHELL /opt/homebrew/bin/fish

/opt/homebrew/bin/brew shellenv | source

## Set default terminal to xterm-256color for better color support
set -x -g TERM xterm-256color
## Set XDG config directory to ~/.config, for various tools
set -x -g XDG_CONFIG_HOME $HOME/.config
## Set lazygit config file
set -x -g LG_CONFIG_FILE "$HOME/.config/lazygit/config.yml"

# Setup Homebrew environment
eval (brew shellenv)

# Initialize Starship and Zoxide
starship init fish | source
zoxide init fish | source

# Initialize forgit
[ -f $HOMEBREW_PREFIX/share/forgit/forgit.plugin.fish ]; and source $HOMEBREW_PREFIX/share/forgit/forgit.plugin.fish

# Load cargo and rust environment
# source $HOME/.cargo/env.fish

# Load my fish aliases
source $HOME/.config/fish/aliases.fish

# Configure tools
source $HOME/.config/fish/tool_config.fish

# Load private environment variables
# source $HOME/.env.fish

# Ensure that Fisher is installed
if not functions -q fisher
    echo "Installing Fisher..."
    curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
end

# Enable vi mode by default
fish_vi_key_bindings

# uv

fish_add_path "$HOME/.local/bin"

#rustup
fish_add_path "$HOME/cargo/bin"

# Unset the default fish greeting text which messes up Zellij
set fish_greeting

# Check if we're in an interactive shell
if status is-interactive

    # At this point, specify the Zellij config dir, so we can launch it manually if we want to
    export ZELLIJ_CONFIG_DIR=$HOME/.config/zellij

    # Check if our Terminal emulator is Ghostty
    if [ "$TERM" = xterm-ghostty ]
        # Launch zellij
        eval (zellij setup --generate-auto-start fish | string collect)
    end
end
