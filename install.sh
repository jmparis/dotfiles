# Install Oh My Zsh
export RUNZSH=no
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install plugin: zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions         ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install plugin: zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install theme: powerlevel9k
git clone https://github.com/bhilburn/powerlevel9k.git             ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel9k

# Powerline Fonts
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

# copy all files from repo to home directory
echo "Copy dotfiles repo..."
cp .bash* ~
cp .profile ~
cp .zsh*  ~

cp .inputrc ~
cp .minttyrc ~

cp .vim* ~
cp .emacs ~

#cp .gitattributes ~
#cp .gitconfig ~
#cp -r .git ~
