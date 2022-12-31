alias ".."="cd .."
alias "..."="cd ../.."
alias "...."="cd ../../.."
alias cro="node ~/dev/pp-github/cro/cro/runner.js"
alias vi="nvim"

# alias npm="pnpm"
export PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
export PUPPETEER_EXECUTABLE_PATH=`which chromium`

export CLOUDSDK_PYTHON=/usr/local/opt/python@3.11/bin/python3

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/dennis/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/dennis/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/dennis/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/dennis/google-cloud-sdk/completion.zsh.inc'; fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PNPM_HOME="/Users/dennis/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
export PATH=~/.npm-global/bin:$PATH
# NPM_CONFIG_PREFIX=~/.npm-global
