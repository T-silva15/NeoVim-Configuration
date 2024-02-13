**REQUISITS FOR THE CONFIG TO WORK:** 

**vim plug:** sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	   
**exuberant-ctags:** $ sudo apt install exuberant-ctags

**nodejs(yarn build):** $ sudo apt install npm / npm install yarn ( !! IN DIRECTORY ~/.config/nvim/plugged) 

**python3:** $ sudo apt install python

**pip:** $ sudo apt install python3-pip

**jedi language server:** $ pip3 install jedi

**gcc:** $ sudo apt install gcc
 

**CoC LANGUAGE SERVERS:**

**C:** ":CocInstall coc-clangd"
**Python:** ":CocInstall coc-python"
**Bash:** "CocInstall coc-sh"
