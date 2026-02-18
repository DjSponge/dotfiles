# Sync dotfiles: add all changes, commit, and push
czsync() {
  local message="${1:-Manual sync: $(date +'%Y-%m-%d %H:%M:%S')}"

  chezmoi git -- add .

  chezmoi git -- commit -m "$message"

  chezmoi git -- push
}
