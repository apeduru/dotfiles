#!/bin/bash

BUNDLE="$HOME/dotfiles/vim/bundle"
GITHUB="https://github.com"
BASH="$HOME/dotfiles/bash"
DOTFILES="$HOME/dotfiles"
GIT="$HOME/dotfiles/git"
YCM="YouCompleteMe"

declare -A repos
repos=( [gmarik]=Vundle.vim [scrooloose]=nerdtree [scrooloose]=syntastic 
		[scrooloose]=nerdcommenter [bling]=vim-airline [airblade]=vim-gitgutter 
		[mhinz]=vim-signify [Raimondi]=delimitMate [majutsushi]=tagbar 
		[nathanaelkane]=vim-indent-guides [powerline]=fonts [SirVer]=ultisnips 
		[tpope]=vim-surround [kien]=ctrlp.vim [Chiel92]=vim-autoformat 
		[tpope]=vim-abolish [terryma]=vim-multiple-cursors [tmhedberg]=SimpylFold 
		[Shougo]=neocomplete.vim [davidhalter]=jedi-vim [xolox]=vim-easytags )

get_sudo(){
	sudo -v
}

update_vim(){
	sudo apt-get update
	sudo apt-get install vim
	sudo apt-get install vim-gnome
}

create_symlinks(){
	echo "Deleting exisiting vim configurations"
	rm  ~/.vimrc
	rm -rf  ~/.vim

	echo "Creating symlinks to new location"
	cd $DOTFILES
	ln -sf $DOTFILES/vimrc ~/.vimrc
	ln -sf $DOTFILES/vim ~/.vim
	
	cd $BASH
	ln -sf $BASH/bash_aliases ~/.bash_aliases
	ln -sf $BASH/bash_profile ~/.bash_profile
	ln -sf $BASH/bash_functions ~/.bash_functions
	ln -sf $BASH/bashrc ~/.bashrc
	
	source ~/.bash_aliases  
	source ~/.bash_profile
	source ~/.bash_functions
	source ~/.bashrc

	cd $GIT
	ln -sf $GIT/gitconfig ~/.gitconfig 
}

install_plugins(){
	echo "Installing Vundle plugins"
	if [ ! -d "$BUNDLE" ]
	then
		mkdir $BUNDLE
	else
		echo "bundle directory already created"
	fi
	cd $BUNDLE

	for p in "${!repos[@]}"
	do
		echo "Installing ${repos[$p]}"
		if [ ! -d "${repos[$p]}" ]
		then
			git clone $GITHUB/"$p"/"${repos[$p]}".git
		else
			echo "${repos[$p]} already cloned"
		fi
	done
	
   # #YouCompleteMe
	#if [ ! -d "YCM" ]; then
		#git clone $GITHUB/Valloric/"$YCM".git
	#else
		#echo "$YCM already cloned"
	#fi
	#cd $BUNDLE/$YCM
	#git submodule update --init --recursive
   # ./install.py --clang-completer

	vim +PluginInstall +qall
}

fonts(){
	cd $BUNDLE/fonts
	bash install.sh
}

essentials(){
	sudo apt-get install build-essential
	sudo apt-get install cmake
	sudo apt-get install exuberant-ctags
	sudo apt-get install tidy	# HTML autoformatting
	#sudo apt-get install ack-grep
}

python_essentials(){
	sudo pip install --upgrade pep8
	sudo pip install --upgrade autopep8
	sudo pip install --upgrade flake8
	sudo apt-get install python-dev
	sudo apt-get install pyflakes

	#git clone https://github.com/python-rope/rope
	#cd rope
	#python setup.py install
	#cd ..
	#rm -rf rope
	
	#for line in $(cat requirements.txt)
	#do
		#sudo pip install --upgrade  $line
	#done


}

node_essentials(){
	clear
}

main(){
	get_sudo
	#update_vim
	#essentials
	python_essentials
	#node_essentials
	create_symlinks
	install_plugins
	#fonts
}

main
clear
