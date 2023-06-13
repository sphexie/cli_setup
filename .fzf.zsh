# Setup fzf
# ---------
if [[ ! "$PATH" == */opt/homebrew/opt/fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/opt/homebrew/opt/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/opt/homebrew/opt/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/opt/homebrew/opt/fzf/shell/key-bindings-custom.zsh"

# Options
# ------------
export FZF_DEFAULT_OPTS='--no-mouse'

# Functions
# ------------
_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)         find . -type d | fzf --preview 'tree -C {}' --bind '\:preview-page-up,/:preview-page-down'                                                      	"$@";;
    vim)        find . -type f -not -path '*/.*/*' | fzf --multi --preview 'bat --color=always --style=numbers {}' --bind '\:preview-page-up,/:preview-page-down'	"$@";;
    *)          fzf                                                                                                                                             	"$@";;
  esac
}
