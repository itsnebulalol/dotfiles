# Variables
export PNPM_HOME="/Users/nebula/Library/pnpm"
export BREW_HOME="/opt/homebrew"
export PROCURSUS_HOME="/opt/procursus"
export PATH="$BREW_HOME/opt/python@3.10/libexec/bin:$BREW_HOME/opt/python@3.10/bin:/opt/procursus/bin:/opt/procursus/sbin:$BUN_INSTALL/bin:$PNPM_HOME:$PATH"
export BUN_INSTALL="/Users/nebula/.bun"
export THEOS=~/theos

# Load brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Load nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Configuration
export HOMEBREW_NO_ANALYTICS=1