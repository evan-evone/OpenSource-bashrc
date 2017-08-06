
# BASH / UNIX Stuff

  # Shortcut to start new scripts, make executeable, etc.
function program {
   if [ "$1" == "--python" ]; then x="python";
   elif [ "$1" == "-py" ]; then x="python";
   elif [ "$1" == "--html" ]; then x="html";
   else x="null"; fi
   
   if [ "$x" == python ]; then
   	touch $2
   	chmod +x $2
   	echo '#!/usr/bin/env python' >> $2
   	echo '' >> $2
   elif [ "$x" == "--html" ]; then
      touch $2
      chmod +x $2
      echo '<!DOCTYPE html>' >> $2
      echo '<html>' >> $2
      echo '</html>' >> $2
   else
   	touch $1
   	chmod +x $1
   fi
}

  # Shortcut to edit different types of files w/ different options
function myvim {
   if [ "$1" == "--python" ]; then x="python";
   elif [ "$1" == "-py" ]; then x="python";
   elif [ "$1" == "--html" ]; then x="html";
   else x="null"; fi
   
   if [ "$x" == "python" ]; then
      vim --cmd ':syntax on 
         set tabstop=4 
         set softtabstop=4 
         set shiftwidth=4
         set expandtab
         set autoindent' $2
   elif [ "$x" == "html" ]; then
      vim --cmd ':syntax on 
         set tabstop=2
         set softtabstop=2 
         set shiftwidth=2
         set expandtab
         set autoindent' $2
   else
      vim --cmd ':source ~/.vimdefault' $1
   fi
}

function findFile { find ~ -name "$1" -print 2>&1 | fgrep -v "Permission denied"; }

function openSchool {
   cd ~/Dropbox/SUM17
   if [ -f ~/Dropbox/SUM17/.SUM17_profile ]; then
      source ~/Dropbox/SUM17/.SUM17_profile
      echo 'school commands loaded'
   fi
}

alias hy="history"
alias alt="ls -lhAG"

export PS1='\W >> '
export PS2='\W .. '

# Git Stuff (PS1 & 2 above also)

x=$(which git) # Only if git is installed
if [ "$x" ]; then

   export PS1='($(__git_ps1)) \W >> ' 
   export PS2='($(__git_ps1)) \W .. '
   
   alias "__git_ps1"="git branch 2>&1 | grep -v 'fatal' | grep \*"
   alias "gitLog"="git log --oneline --graph --decorate --all"
   
   if [ -f ~/.git-completion.bash ]; then
      source ~/.git-completion.bash
      echo 'git completion commands loaded'
   fi;
fi

# added by Anaconda 2.1.0 installer
export PATH="/Users/evan/anaconda/bin:$PATH"

# added by Anaconda3 4.4.0 installer
export PATH="/Users/evan/anaconda3/bin:$PATH"

echo 'Hello, Evan.'
