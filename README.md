# Homebrew Tap for navio

Official Homebrew tap for navio's tools.

## Installation

```bash
brew tap navio/tap
brew install am
```

## Available Formulas

### am - Alias Manager

A lightweight CLI tool for managing shell aliases directly in your `.zshrc` or `.bashrc` files.

**Features:**
- Add, list, update, and delete aliases
- Auto-detect shell (bash/zsh)
- Automatic backups before modifications
- Auto-source wrapper for immediate alias activation
- Search aliases by name

**Quick Start:**
```bash
# Install
brew install am

# Initialize auto-sourcing
am init
source ~/.zshrc

# Start using
am add ll 'ls -la'
am list
```

**Links:**
- [GitHub Repository](https://github.com/navio/am)
- [Documentation](https://github.com/navio/am#readme)

## Updating

To update formulas from this tap:

```bash
brew update
brew upgrade am
```

## Issues

Report issues at the respective project repositories.
