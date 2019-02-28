https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/

Setup
git init --bare $HOME/.dotfiles
dotfiles remote add origin git@github.com:M4nk1n1/dotfiles.git


Configuration
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config status.showUntrackedFiles no


Usage
dotfiles status
dotfiles add .gitconfig
dotfiles commit -m 'Add gitconfig'
dotfiles push


Replication
git clone --separate-git-dir=$HOME/.dotfiles https://github.com/M4nk1n1/dotfiles.git my-dotfiles-tmp
rsync --recursive --verbose --exclude '.git' my-dotfiles-tmp/ $HOME/
rm --recursive my-dotfiles-tmp
