# Dotfiles

Cross-platform dotfiles managed with [chezmoi](https://www.chezmoi.io/), supporting macOS and Linux.

## Quick Start

```bash
# Install chezmoi and apply dotfiles in one command
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply <github-username>
```

Or if chezmoi is already installed:

```bash
chezmoi init --apply <github-username>
```

## What Gets Installed

### Bootstrap (run once)

- **Homebrew** (macOS only)
- **Rust** via rustup (+ clippy, rustfmt, rust-analyzer)
- **Starship** prompt
- **mise** version manager
- Sets **zsh** as default shell

### Packages (declarative, via package managers)

| Tool      | Description                  |
| --------- | ---------------------------- |
| fzf       | Fuzzy finder                 |
| ripgrep   | Fast grep                    |
| fd        | Fast find                    |
| bat       | Cat with syntax highlighting |
| eza       | Modern ls                    |
| zoxide    | Smarter cd                   |
| git-delta | Better git diffs             |
| neovim    | Editor                       |
| wezterm   | Terminal emulator            |

## Structure

```
.chezmoidata/
  packages.yaml                 # Declare packages here (edit to add/remove)
dot_zshrc.tmpl                  # Zsh configuration
run_once_before_install.sh.tmpl # Bootstrap script (runs once)
run_onchange_darwin-*.tmpl      # macOS package install (runs on packages.yaml change)
run_onchange_linux-*.tmpl       # Linux package install (runs on packages.yaml change)
```

## Adding Packages

Edit `.chezmoidata/packages.yaml` and run:

```bash
chezmoi apply
```

## Supported Platforms

- **macOS** (Intel & Apple Silicon) - via Homebrew
- **Arch Linux** (+ Manjaro, EndeavourOS) - via pacman
- **Debian/Ubuntu** (+ Pop!\_OS) - via apt
- **Fedora** - via dnf

## Zsh Features

- Shared history across terminals
- Case-insensitive completion
- `AUTO_CD` - type directory name to navigate
- fzf integration (Ctrl+R, Ctrl+T, Alt+C)
- Modern aliases (cat→bat, ls→eza, grep→rg, cd→zoxide)
- Starship prompt

## TODO

- [ ] Neovim configuration
- [ ] Starship configuration
- [ ] WezTerm configuration
- [ ] Git configuration
