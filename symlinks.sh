# generates symlinks for dotfiles (~)

cd dotfiles

ln -s ${HOME}/dotfiles/dotfiles/.zshrc ${HOME}/.zshrc
ln -s ${HOME}/dotfiles/dotfiles/.gitconfig ${HOME}/.gitconfig

source .zshrc