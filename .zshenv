# Load brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Load nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Configuration
export HOMEBREW_NO_ANALYTICS=1