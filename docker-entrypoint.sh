#!/usr/bin/env bash
set -e

# Sincronizar archivo de configuración de tmux desde el workspace
if [ -f "/workspace/.tmux.conf" ]; then
    cp /workspace/.tmux.conf /home/node/.tmux.conf 2>/dev/null || true
    chown node:node /home/node/.tmux.conf 2>/dev/null || true
fi

if [ -f "/workspace/.tmux.conf.local" ]; then
    cp /workspace/.tmux.conf.local /home/node/.tmux.conf.local 2>/dev/null || true
    chown node:node /home/node/.tmux.conf.local 2>/dev/null || true
fi

# Inicializar archivos de historial del proyecto
touch /workspace/.bash_history /workspace/.zsh_history 2>/dev/null || true

# Configurar .zshrc desde la plantilla
if [ -f "/usr/local/etc/zshrc.template" ]; then
    cp /usr/local/etc/zshrc.template /home/node/.zshrc
    chown node:node /home/node/.zshrc 2>/dev/null || true
fi

# Configurar .bashrc limpio como respaldo
cat << 'EOF' > /home/node/.bashrc
# ~/.bashrc
export HISTFILE=/workspace/.bash_history
export HISTSIZE=5000
export HISTFILESIZE=10000
shopt -s histappend
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

alias c="claude"
alias cx="codex"
alias rw="railway"
alias lg="lazygit"
alias pn="pnpm"
alias b="bun"
alias dev="npm run dev"
alias build="npm run build"
alias ls="eza --icons"
alias ll="eza -la --icons"
alias tree="eza --tree --icons"
alias cat="bat --paging=never"

if [ -t 0 ] && [ -t 1 ] && [ -n "$TMUX" ] && [ -z "$VIBE_BANNER_SHOWN" ]; then
    export VIBE_BANNER_SHOWN=1
    vibe-welcome
fi
EOF
chown node:node /home/node/.bashrc 2>/dev/null || true

exec "$@"
