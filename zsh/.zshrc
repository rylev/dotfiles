# Load Configuration Files

dotdir=${HOME}/.dotfiles
zshdir=${dotdir}/zsh

for file in ${zshdir}/.{aliases,config,env,personal,functions};
do
  [ -r "$file" ] && source "$file"
done