#!/bin/bash

echo "Configuring terminal theme..."


CONFIG_DIR="$HOME/.config"

mkdir -p "$CONFIG_DIR"


####################################
# Starship
####################################

mkdir -p "$CONFIG_DIR"

cat > "$CONFIG_DIR/starship.toml" <<'EOF'

add_newline = true

format = """
$directory\
$git_branch\
$git_status\
$python\
$docker_context\
$character
"""


[directory]

truncation_length = 4
truncate_to_repo = true


[git_branch]

symbol = " "
style = "bold purple"


[git_status]

style = "bold yellow"


[python]

symbol = " "


[docker_context]

symbol = " "


[character]

success_symbol = "[❯](green)"
error_symbol = "[❯](red)"

EOF


####################################
# Aliases
####################################

cat > "$HOME/.engineering_aliases" <<'EOF'

# Navigation
alias ..="cd .."
alias ...="cd ../.."

# Better ls
alias ls="eza --icons"
alias ll="eza -lah --icons"
alias la="eza -a"

# Better cat
alias cat="bat"

# Git
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gcm="git commit -m"
alias gp="git push"
alias gl="git pull"

# Docker
alias dps="docker ps"
alias dimg="docker images"

# Python
alias py="python3"

# Clear
alias cls="clear"

EOF


####################################
# ZSH configuration
####################################

ZSHRC="$HOME/.zshrc"


if ! grep -q "engineering_aliases" "$ZSHRC" 2>/dev/null
then

cat >> "$ZSHRC" <<'EOF'


# Engineering terminal setup

export PATH="$HOME/.local/bin:$PATH"


# Plugins
plugins=(
git
docker
python
sudo
)

source $ZSH/oh-my-zsh.sh


# Aliases
source ~/.engineering_aliases


# Starship
eval "$(starship init zsh)"


# zoxide
eval "$(zoxide init zsh)"

EOF

fi


####################################
# tmux
####################################

cat > "$HOME/.tmux.conf" <<'EOF'

set -g mouse on

set -g history-limit 10000

set -g default-terminal screen-256color


# Easier split commands

unbind %
bind | split-window -h

unbind '"'
bind - split-window -v


EOF


echo "Terminal theme configured."

echo ""
echo "To enable ZSH as default shell:"
echo ""
echo "chsh -s $(which zsh)"
echo ""