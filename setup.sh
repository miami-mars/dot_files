# One time run

# Install ZSH and change shell
echo "Installing zsh..."
sudo apt-get install -y zsh wget
sudo chsh -s /bin/zsh

echo "Installing oh-my-zsh"
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# Removing old dot files
echo "Deleting old dotfiles..."
rm ~/.vimrc
rm ~/.zshrc

# Link dot files
echo "Linking new dotfiles..."
ln -s $(pwd)/.vimrc ~/.vimrc
ln -s $(pwd)/.zshrc ~/.zshrc