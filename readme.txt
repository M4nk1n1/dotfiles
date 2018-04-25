Setup
git init --bare $HOME/.my-dotfiles
mydotfiles remote add origin git@github.com:Siilwyn/my-dotfiles.git


Configuration
alias mydotfiles='git --git-dir=$HOME/.my-dotfiles/ --work-tree=$HOME'
mydotfiles config status.showUntrackedFiles no


Usage
mydotfiles status
mydotfiles add .gitconfig
mydotfiles commit -m 'Add gitconfig'
mydotfiles push


Replication
git clone --separate-git-dir=$HOME/.my-dotfiles https://github.com/Siilwyn/my-dotfiles.git my-dotfiles-tmp
rsync --recursive --verbose --exclude '.git' my-dotfiles-tmp/ $HOME/
rm --recursive my-dotfiles-tmp
