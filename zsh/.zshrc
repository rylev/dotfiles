# Load Configuration Files

dotdir=${HOME}/.dotfiles
zshdir=${dotdir}/zsh

for file in ${zshdir}/.{aliases,config,env,personal,functions};
do
  [ -r "$file" ] && source "$file"
done

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
### Add /usr/local because for some reason golang installs there
export PATH="/usr/local/go/bin:$PATH"
export PATH="/Users/ryanlevick/Library/Haskell/bin:$PATH"
export PATH="${PATH}:/Users/ryanlevick/Sites/work/wake/bin"
source "/Users/ryanlevick/Sites/work/wake/completions/wake.zsh"
