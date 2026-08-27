#!/usr/bin/env bash

# Sincronizar .tmux.conf si existe en workspace
if [ -f "/workspace/.tmux.conf" ]; then
    cp /workspace/.tmux.conf /home/node/.tmux.conf 2>/dev/null || true
fi
if [ -f "/workspace/.tmux.conf.local" ]; then
    cp /workspace/.tmux.conf.local /home/node/.tmux.conf.local 2>/dev/null || true
fi

# Banner ASCII Vibe Coder Next
CYAN='\033[1;36m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
MAGENTA='\033[1;35m'
GRAY='\033[0;90m'
NC='\033[0m'

echo -e "${CYAN}"
cat << 'EOF'
 __     ___ _            ____          _             _   _            _   
 \ \   / (_) |          / ___|___   __| | ___ _ __  | \ | | _____  _| |_ 
  \ \ / /| | |__   ___ | |   / _ \ / _` |/ _ \ '__| |  \| |/ _ \ \/ / __|
   \ V / | | '_ \ / _ \| |__| (_) | (_| |  __/ |    | |\  |  __/>  <| |_ 
    \_/  |_|_.__/ \___| \____\___/ \__,_|\___|_|    |_| \_|\___/_/\_\\__|
EOF
echo -e "${NC}"
echo -e "${GREEN}  🚀 Entorno Vibe Coder con IA, Oh My Zsh & Tmux preparado${NC}"
echo -e "${GRAY}  ───────────────────────────────────────────────────────────────────${NC}"
echo -e "  IAs & Dev:    ${YELLOW}c${NC} (claude) | ${YELLOW}cx${NC} (codex) | ${YELLOW}rw${NC} (railway) | ${YELLOW}lg${NC} (lazygit)"
echo -e "  Paquetes:     ${YELLOW}pn${NC} (pnpm) | ${YELLOW}b${NC} (bun) | ${YELLOW}npm${NC} | ${YELLOW}node${NC}"
echo -e "  Utilidades:   ${YELLOW}ls / ll / tree${NC} (eza) | ${YELLOW}cat${NC} (bat) | ${YELLOW}Ctrl+T / Ctrl+R${NC} (fzf)"
echo -e "  Prefijo Tmux: ${MAGENTA}Ctrl + a${NC} (o ${MAGENTA}Ctrl + b${NC}) | Desacoplar: ${MAGENTA}prefix + d${NC}"
echo -e "${GRAY}  ───────────────────────────────────────────────────────────────────${NC}"
echo -e "  💡 Escribe ${YELLOW}ayuda${NC} o ${YELLOW}vibe-help${NC} para ver la guía completa de todos los atajos"
echo ""
