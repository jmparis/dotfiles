# dotfiles repository
## All custom files for shells, themes, terminal, editors
Configuration ***files*** and ***folder*** for home directory.
Supported applications are:
`bash`
`zsh`
`mintty`
`git`
`vim`
`emacs`

### Prerequisites
ZSH is the prefered shell. There are tons of useful features, and tons of extras available all around the net. Ensure the following tools are already installed.
``` shell
> pacman -S git curl wget bash zsh zsh-doc
```
### GitHub Repository: [_dotfiles_](https://github.com/jmparis/dotfiles)
``` shell
git clone https://github.com/jmparis/dotfiles.git dotfiles
```

#### DEPENDENCIES

##### [Oh My ZSH](https://github.com/robbyrussell/oh-my-zsh)
First install the oh-my-zsh extension
``` shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

###### plug-ins
[__zsh-autosuggestions__](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)

1.	Clone this repository into $ZSH_CUSTOM/plugins (by default ~/.oh-my-zsh/custom/plugins)
``` shell
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

2. Add the plug-in to the list of plug-ins for Oh My Zsh to load (inside ~/.zshrc):
``` shell
plugins=(zsh-autosuggestions)
```


[__zsh-syntax-highlighting__](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)

1. Clone this repository in oh-my-zsh's plugins directory:
``` shell
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
The plug-in ZSH syntax highlighting must be the last plug-in sourced. 

2. Activate the plug-in in ``~/.zshrc``:
``` shell
plugins=( [plugins...] zsh-syntax-highlighting)
```

###### Themes

[__Powerlevel9k__](https://github.com/Powerlevel9k/powerlevel9k/wiki/Install-Instructions)
1.	To install this theme for use in Oh-My-Zsh, clone this repository into your OMZ custom/themes directory.
``` shell
git clone https://github.com/bhilburn/powerlevel9k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel9k
```
2. You then need to select this theme in your ~/.zshrc:
``` shell
ZSH_THEME="powerlevel9k/powerlevel9k"
```
Please note if you plan to set a POWERLEVEL9K_MODE to use a specific font, as described in this section of the Wiki, you must set the MODE before OMZ is loaded (look for source $ZSH/oh-my-zsh.sh in your ~/.zshrc).

##### [Powerline Fonts](https://github.com/powerline/fonts)
Install the power line fonts
``` shell
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts
```

### Notes
1. Make sure to have `<LF>` as end line for all .bash files, else **Cygwin** can not deal with `\r` character.
2. **Notepad++** is very handy to do that

## Installation
``` shell
# Get the dotfiles repo
git clone https://github.com/jmparis/dotfiles.git dotfiles

# Run the install.sh script
cd dotfiles
./install.sh

# Cleaning
cd ..
rm -rf ./dotfiles
```

