# 🚀 Entorno Contenerizado para Vibe Coder Next

Este proyecto contiene un entorno de desarrollo profesional, completo y aislado en Docker, optimizado para la formación **Vibe Coder**. Incluye agentes de IA en terminal, clientes de despliegue, gestores de paquetes ultrarrápidos, utilidades visuales modernas de terminal y Oh My Zsh con Tmux.

> 📚 **¿Vas a clonar este proyecto en tu computadora?**  
> Consulta la [Guía de Instalación para Linux, Windows (WSL2) y macOS](file:///Users/castr/Library/CloudStorage/GoogleDrive-chcramirez@gmail.com/Mi%20unidad/2026/uaz-2026/formaciones-2026/vibe-coder-next/antigravity/GUIA_INSTALACION.md) con el paso a paso detallado para comenzar en 3 minutos.

---

## 📦 Herramientas Incluidas (13/13)

| Herramienta | Comando CLI | Propósito |
| :--- | :--- | :--- |
| **Git** | `git --version` | Control de versiones |
| **Node.js** | `node --version` | Entorno JavaScript / TypeScript (v22 LTS) |
| **NPM** | `npm --version` | Gestor de paquetes tradicional |
| **PNPM** | `pnpm --version` | Gestor de paquetes ultrarrápido con ahorro de disco |
| **Bun** | `bun --version` | Runtime y ejecutor directo de TypeScript (`bun run file.ts`) |
| **GitHub CLI** | `gh --version` | Gestión de repositorios, PRs e issues desde la terminal |
| **Railway CLI** | `railway --version` | Despliegue e infraestructura en Railway |
| **Claude Code** | `claude --version` | Agente CLI oficial de Anthropic (`@anthropic-ai/claude-code`) |
| **OpenAI Codex** | `codex --version` | Agente CLI oficial de OpenAI (`@openai/codex`) |
| **Lazygit** | `lazygit --version` | Interfaz gráfica interactiva de Git en terminal |
| **Eza** | `eza --version` | Reemplazo moderno de `ls` con colores, iconos y árboles |
| **Bat** | `bat --version` | Reemplazo de `cat` con resaltado de sintaxis y paginación |
| **FZF** | `fzf --version` | Buscador interactivo difuso (*fuzzy finder*) |
| **Oh My Zsh** | `zsh` | Shell enriquecido con tema RobbyRussell |
| **Oh My Tmux** | `tmux` | Multiplexor de terminales con prefijos duales y paneles |

---

## ⚡ Aliases Rápidos para Vibe Coding

Dentro del contenedor tienes configurados estos atajos de 1 y 2 letras:

| Alias | Comando Real | Descripción |
| :--- | :--- | :--- |
| `c` | `claude` | Iniciar Claude Code CLI |
| `cx` | `codex` | Iniciar OpenAI Codex CLI |
| `rw` | `railway` | CLI de despliegues en Railway |
| `lg` | `lazygit` | Abrir interfaz visual de Git |
| `pn` | `pnpm` | Ejecutar PNPM |
| `b` | `bun` | Ejecutar Bun |
| `dev` | `npm run dev` | Iniciar servidor de desarrollo |
| `build` | `npm run build` | Compilar proyecto |
| `ls` | `eza --icons` | Listar archivos con iconos |
| `ll` | `eza -la --icons` | Listar detalles y permisos |
| `tree` | `eza --tree --icons` | Vista de árbol del proyecto |
| `cat` | `bat --paging=never` | Ver archivo con código coloreado |

---

## 🔌 Plugins de Oh My Zsh: Guía de Uso y Atajos

| Plugin | ¿Qué hace? | Atajo / Cómo usarlo |
| :--- | :--- | :--- |
| **`zsh-autosuggestions`** | Muestra en gris la sugerencia más probable según tu historial. | • **`→` (Flecha derecha)** o **`End`**: Aceptar sugerencia completa.<br>• **`Alt + →`**: Aceptar solo la siguiente palabra. |
| **`zsh-syntax-highlighting`** | Colorea comandos en tiempo real para evitar errores de tipeo. | • **Verde**: Comando o ruta válida existente.<br>• **Rojo**: Comando desconocido o error de sintaxis.<br>• **Subrayado**: Ruta de archivo existente. |
| **`zsh-completions`** | Autocompletado interactivo extendido para `npm`, `git`, `docker`, `gh`, `railway`, etc. | • **`Tab`**: Abrir menú de opciones.<br>• **`Tab` repetido** o **Flechas `← ↑ ↓ →`**: Navegar y presionar `Enter` para elegir. |
| **`history-substring-search`** | Busca en el historial escribiendo cualquier parte del comando. | • Escribe cualquier parte del comando (ej: `login`).<br>• Presiona **`↑` (Flecha arriba)** para buscar hacia atrás.<br>• Presiona **`↓` (Flecha abajo)** para avanzar. |

---

## 🔍 Búsqueda Interactiva con FZF

* **`Ctrl + T`**: Busca cualquier archivo o carpeta en tu proyecto de forma difusa y lo inserta en la terminal.
* **`Ctrl + R`**: Abre el buscador interactivo de todo tu historial de comandos. Escribe lo que recuerdes y presiona `Enter`.

---

## 🪟 Atajos Básicos de Tmux (*Oh My Tmux*)

Prefijo configurado: **`Ctrl + a`** (o `Ctrl + b`)

| Acción | Atajo de Teclado |
| :--- | :--- |
| **Dividir panel horizontalmente** | `Ctrl + a` seguido de `-` (o `_`) |
| **Dividir panel verticalmente** | `Ctrl + a` seguido de `|` (o `\`) |
| **Moverse entre paneles** | `Ctrl + a` seguido de las flechas `← ↑ ↓ →` o `h j k l` |
| **Crear nueva ventana/pestaña** | `Ctrl + a` seguido de `c` |
| **Cambiar entre ventanas** | `Ctrl + a` seguido del número (`0`, `1`, `2`...) o `n` (siguiente) / `p` (anterior) |
| **Maximizar / Restaurar panel actual** | `Ctrl + a` seguido de `z` |
| **Desconectarse de la sesión (sin cerrarla)** | `Ctrl + a` seguido de `d` (vuelves con `make shell`) |
| **Cerrar panel actual** | Escribir `exit` o `Ctrl + d` |

---

## ⚡ Inicio Rápido

### 1. Variables de Entorno (Opcional)
Copia la plantilla de entorno si cuentas con API Keys:
```bash
cp .env.example .env
```
Edita `.env` y agrega tus claves:
```env
ANTHROPIC_API_KEY=sk-ant-...
OPENAI_API_KEY=sk-...
```

---

## 🛠️ Modos de Uso

### Opción A: Usando `make` (Recomendada)

1. **Construir e iniciar el contenedor:**
   ```bash
   make up
   ```
2. **Verificar todas las herramientas:**
   ```bash
   make verify
   ```
3. **Entrar a la terminal interactiva:**
   ```bash
   make shell
   ```
4. **Detener el contenedor:**
   ```bash
   make down
   ```

---

### Opción B: Visual Studio Code (Dev Containers)

1. Abre esta carpeta en VS Code.
2. Haz clic en **"Reopen in Container"** en la esquina inferior derecha.
3. VS Code abrirá la terminal directamente dentro del contenedor con las extensiones configuradas.

---

## 🔑 Autenticación Centralizada en tu Mac (`~`)

Las credenciales se almacenan directamente en tu directorio personal de macOS (`~`):

* `~/.config/gh`: Configuración y tokens de GitHub CLI (**sin usar el Keychain de Mac**)
* `~/.railway`: Credenciales de Railway
* `~/.claude` y `~/.claude.json`: Sesiones de Claude Code
* `~/.codex`: Sesiones de OpenAI Codex

Esto permite:
1. **Compartir logins entre múltiples proyectos** en tu Mac.
2. **Inmunidad a Docker**: Reconstruir o recrear el contenedor no borra tus sesiones.

Dentro del contenedor (`make shell`):
* **GitHub:** `gh auth login`
* **Railway:** `railway login --browserless`
* **Claude Code:** `c` (o `claude`)
* **Codex CLI:** `cx` (o `codex`)

---

## 📜 Historial de Comandos por Proyecto (`.zsh_history` / `.bash_history`)

El historial de terminal es **independiente para cada proyecto**:
* Se guarda automáticamente en `.zsh_history` en la raíz de cada carpeta.
* Cada proyecto recuerda únicamente los comandos ejecutados en ese proyecto.
* Está protegido en `.gitignore` para no compartirse en tus commits.

---

## 🌐 Puertos Mapeados para Desarrollo Web

El contenedor expone hacia `localhost`:
- `3000`: Next.js / React / Remix
- `5173`: Vite / Vue / Svelte
- `8000`: FastAPI / Django
- `8080`: Servidores HTTP generales
