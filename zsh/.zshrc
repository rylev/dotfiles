# Load Configuration Files

dotdir=${HOME}/.dotfiles
zshdir=${dotdir}/zsh

for file in ${zshdir}/{aliases,config,env,personal,functions};
do
  [ -r "$file" ] && source "$file"
done

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/Users/ryanlevick/Library/Haskell/bin:$PATH"
export PATH="${PATH}:/Users/ryanlevick/Sites/work/wake/bin"
export PATH="${PATH}:/Users/ryanlevick/bin/activator"
export PATH="${PATH}:/Users/ryanlevick/bin/aws/bin/aws"
export PATH="${PATH}:/Applications/Postgres93.app/Contents/MacOS/bin"
source "/Users/ryanlevick/Sites/work/wake/completions/wake.zsh"

## GO PATH
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/opt/go/libexec/bin

# Added by travis gem
[ -f /Users/ryanlevick/.travis/travis.sh ] && source /Users/ryanlevick/.travis/travis.sh

# Android
export ANDROID_HOME=/usr/local/opt/android-sdk
