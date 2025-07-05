# Vim Configuration

A modern VS Code-like Vim configuration with powerful plugins for enhanced development experience.

## Installation

### Prerequisites

- Vim 8.0+ or Neovim 0.5+
- Git
- Node.js (for CoC language server)

### Quick Setup

1. **Clone this repository to your home directory:**
   ```bash
   git clone <your-git-repo-url> ~/.vim
   ```

2. **Create symlink to vimrc:**
   ```bash
   ln -s ~/.vim/.vimrc ~/.vimrc
   ```

3. **Install vim-plug (plugin manager):**
   ```bash
   curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/autoload/plug.vim
   ```

4. **Install plugins:**
   ```bash
   vim +PlugInstall +qall
   ```

5. **Install CoC language servers (optional):**
   ```bash
   # Open vim and install language servers
   vim
   :CocInstall coc-tsserver coc-python coc-json coc-html coc-css
   ```

### Manual Setup

If you prefer to set up manually:

1. Copy `.vimrc` to your home directory
2. Create `~/.vim/plugged/` directory
3. Install vim-plug as shown above
4. Run `:PlugInstall` in vim

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

## Extended Hotkeys (Available in backup config)

The backup configuration (`.vimrc.bak`) contains additional hotkeys with comma (`,`) as the leader key:

### Leader Key Commands

| Hotkey | Description |
|--------|-------------|
| `,w` | Quick save |
| `,<Enter>` | Clear search highlighting |
| `,l` / `,h` | Next/previous buffer |
| `,tn` / `,tc` | New/close tab |

### Window Management

| Hotkey | Description |
|--------|-------------|
| `Ctrl+j/k/h/l` | Move between windows |
| `,bd` | Close current buffer |
| `,ba` | Close all buffers |

### Text Editing

| Hotkey | Description |
|--------|-------------|
| `0` | Jump to first non-blank character |
| `*` | Search for word under cursor |
| `Space` | Search forward |
| `,pp` | Toggle paste mode |

### Buffer Management

| Hotkey | Description |
|--------|-------------|
| `,bd` | Close current buffer |
| `,ba` | Close all buffers |
| `,l` | Next buffer |
| `,h` | Previous buffer |

### Tab Management

| Hotkey | Description |
|--------|-------------|
| `,tn` | New tab |
| `,to` | Close other tabs |
| `,tc` | Close current tab |
| `,tm` | Move tab |
| `,t,` | Next tab |
| `,tl` | Toggle to last accessed tab |
| `,te` | Open new tab with current file's directory |
| `,cd` | Change directory to current file's directory |

### Spell Checking

| Hotkey | Description |
|--------|-------------|
| `,ss` | Toggle spell checking |
| `,sn` | Next spelling error |
| `,sp` | Previous spelling error |
| `,sa` | Add word to dictionary |
| `,s?` | Spelling suggestions |

### Utility

| Hotkey | Description |
|--------|-------------|
| `,m` | Remove Windows line endings (^M) |
| `,q` | Quick buffer for notes |
| `,x` | Quick markdown buffer for notes |
| `,pp` | Toggle paste mode |

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

## Switching Between Configurations

To switch to the extended configuration with more hotkeys:

```bash
# Backup current config
mv ~/.vimrc ~/.vimrc.minimal

# Use the extended config
cp ~/.vim/.vimrc.bak ~/.vimrc

# Restart vim
```

To switch back to minimal config:

```bash
# Restore minimal config
mv ~/.vimrc.minimal ~/.vimrc
```

## Troubleshooting

### CoC Issues
- Make sure Node.js is installed
- Run `:CocInfo` to check CoC status
- Install language servers with `:CocInstall coc-<language>`

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