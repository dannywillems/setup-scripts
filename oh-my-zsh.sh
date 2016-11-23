OH_MY_ZSH_GIT_PARENT_DIRECTORY=GitLab/Personal
GIT_DIR_NAME=my-zsh-plugins
GIT_REPO=git@gitlab.com:dannywillems/my-zsh-plugins.git

echo "Install Oh-My-Zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Create git parent directory where the custom configuration of Oh-My-Zsh will be cloned."
mkdir -p $OH_MY_ZSH_GIT_PARENT_DIRECTORY

echo "Clone git directory containing the custom configuration of Oh-My-Zsh"
git clone git@gitlab.com:dannywillems/my-zsh-plugins $OH_MY_ZSH_GIT_PARENT_DIRECTORY/$GIT_DIR_NAME

echo "Remove old .zshrc and custom directory"
rm -r $HOME/.zshrc $HOME/.oh-my-zsh/custom

echo "Create sym links for .zshrc and custom directory"
ln -s $OH_MY_ZSH_GIT_PARENT_DIRECTORY/$GIT_DIR_NAME/zshrc $HOME/.zshrc
ln -s $OH_MY_ZSH_GIT_PARENT_DIRECTORY/$GIT_DIR_NAME/custom $HOME/.oh-my-zsh/custom
