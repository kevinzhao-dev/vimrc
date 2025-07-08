# Vim Configuration

A modern VS Code-like Vim configuration with powerful plugins for enhanced development experience.

## Installation

### Prerequisites

- Vim 8.0+ or Neovim 0.5+
- Git
- Node.js (for CoC language server)

### Quick Setup

Clone this repository and set it up in one command:

```bash
git clone https://github.com/kevinzhao-dev/vimrc.git ~/.vim \
  && ln -sf ~/.vim/.vimrc ~/.vimrc
```

Then, simply open Vim:

```bash
vim
```

On first launch, vim-plug and all plugins will be installed automatically.

## Plugins Included

- **[NERDTree](https://github.com/preservim/nerdtree)** - File explorer
- **[CoC.nvim](https://github.com/neoclide/coc.nvim)** - Language Server Protocol (LSP) support
- **[vim-gitgutter](https://github.com/airblade/vim-gitgutter)** - Git integration
- **[vim-airline](https://github.com/vim-airline/vim-airline)** - Status line
- **[gruvbox](https://github.com/morhetz/gruvbox)** - Color scheme
- **[vim-polyglot](https://github.com/sheerun/vim-polyglot)** - Syntax highlighting

## Hotkeys Reference

### File Navigation

| Hotkey | Description |
|--------|-------------|
| `Ctrl+n` | Toggle NERDTree file explorer |
| `Ctrl+w` + `h/j/k/l` | Navigate between windows |
| `Ctrl+o` | Jump to previous location in jump list |
| `Ctrl+i` | Jump to next location in jump list |

### Code Navigation (CoC LSP)

| Hotkey | Description |
|--------|-------------|
| `gd` | Go to definition |
| `gy` | Go to type definition |
| `gi` | Go to implementation |
| `gr` | Go to references |
| `Ctrl+Space` | Trigger code completion |
| `[g` / `]g` | Navigate diagnostics (errors/warnings) |

### Git Integration (GitGutter)

| Hotkey | Description |
|--------|-------------|
| `[c` / `]c` | Jump between git changes |
| `,hp` | Preview git hunk |
| `,hs` | Stage git hunk |
| `,hu` | Undo git hunk |


## Configuration Details

### Theme & Appearance
- **Theme**: Gruvbox dark theme
- **Airline**: Status line with gruvbox theme and powerline fonts
- **Line numbers**: Both absolute and relative numbers enabled

### Editor Settings
- **Indentation**: 4 spaces, smart indentation
- **Search**: Incremental search, case-smart searching
- **No swap/backup files**: Clean working environment
- **Auto-completion**: CoC.nvim provides VS Code-like intellisense


## Language Server Setup

### Prerequisites for Language Servers

**C/C++ (clangd):**
```bash
# Install clangd
# macOS
brew install llvm

# Ubuntu/Debian
sudo apt install clangd

# Then in vim
:CocInstall coc-clangd
```

**Python (Pyright):**
```bash
# Install Python and pip, then in vim
:CocInstall coc-pyright
```

**Rust (rust-analyzer):**
```bash
# Install Rust and cargo, then in vim
:CocInstall coc-rust-analyzer
```

### Verifying Language Server Installation

1. **Check installed extensions:**
   ```vim
   :CocList extensions
   ```

2. **Check language server status:**
   ```vim
   :CocInfo
   ```

3. **Check if language server is running for current file:**
   ```vim
   :CocCommand workspace.showOutput
   ```

## Troubleshooting

### CoC Issues
- Make sure Node.js is installed
- Run `:CocInfo` to check CoC status
- Install language servers with `:CocInstall coc-<language>`

### Language Server Not Working
- **Error "definition provider not found"**: Language server not installed for the file type
- **Check file type**: `:set filetype?` to see if vim recognizes the file type
- **Check language server**: `:CocList services` to see active language servers
- **Restart CoC**: `:CocRestart` to restart the language server

### C/C++ Specific Issues
- **clangd not found**: Install clangd system-wide first
- **No compile commands**: Create `compile_commands.json` or use cmake/bear to generate it
- **Include paths**: Use `.clangd` config file in project root

### Python Specific Issues
- **Wrong Python version**: Configure python path in `:CocConfig`
- **Missing modules**: Install packages in the same Python environment

### Rust Specific Issues
- **rust-analyzer not found**: Install rust-analyzer binary system-wide
- **Project not recognized**: Make sure you're in a Cargo project directory

### NERDTree Issues
- If NERDTree doesn't open, check if the plugin is installed with `:PlugStatus`

### Font Issues
- For airline symbols, install a powerline font
- Set your terminal to use a powerline-compatible font

## Customization

Feel free to modify `.vimrc` to suit your needs:

1. Add new plugins to the `call plug#begin()` section
2. Customize key mappings in the configuration
3. Adjust theme and appearance settings
4. Add language-specific configurations

## Contributing

1. Fork the repository
2. Make your changes
3. Test thoroughly
4. Submit a pull request

## License

This configuration is free to use and modify.
