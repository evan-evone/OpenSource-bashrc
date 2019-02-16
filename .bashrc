# BASH / UNIX Stuff

  # Reset PATH variable to initial value

export PATH="$(getconf PATH)"

  # Shortcut to start new scripts, make executeable, etc.
function program {
    if [ "$1" == "--python" ]; then x="python";
    elif [ "$1" == "-py" ]; then x="python";
    elif [ "$1" == "--javascript" ]; then x="javascript";
    elif [ "$1" == "-js" ]; then x="javascript";
    elif [ "$1" == "--node" ]; then x="javascript";
    elif [ "$1" == "-n" ]; then x="javascript";
    elif [ "$1" == "--html" ]; then x="html";
    elif [ "$1" == "--bash" ]; then x="bash";
    elif [ "$1" == "-sh" ]; then x="bash";
    elif [ "$1" == "-cpp" ]; then x="c++";
    else x="null"; fi

    if [ "$x" == "python" ]; then
        touch "$2"
        chmod +x "$2"
        echo "#!/usr/bin/env python" >> "$2"
        echo "" >> "$2"
    elif [ "$x" == "javascript" ]; then
        touch "$2"
        chmod +x "$2"
        echo "#!/usr/bin/env node" >> "$2"
        echo "" >> "$2"
    elif [ "$x" == "bash" ]; then
        touch "$2"
        chmod +x "$2"
        echo "#!/usr/bin/env bash" >> "$2"
        echo "" >> "$2"
    elif [ "$x" == "html" ]; then
        touch "$2"
        chmod +x "$2"
        echo "<!DOCTYPE html>" >> "$2"
        echo "<html>" >> "$2"
        echo "</html>" >> "$2"
    elif [ "$x" == "c++" ]; then
        touch "$2"
        touch ${2%.*}.o
        chmod +x ${2%.*}.o
        echo "#include <iostream>" >> "$2"
        echo "using namespace std;" >> "$2"
        echo "int main()" >> "$2"
        echo "{" >> "$2"
        echo "" >> "$2"
        echo "  return 0;" >> "$2"
        echo "}" >> "$2"
    else
        touch $1
        chmod +x $1
    fi
}

function findFile { find $1 -name "$2" -print 2>&1 | fgrep -v "Permission denied"; }

function ip { ipconfig getifaddr en0; }

alias hy="history"
alias la="ls -lhAG"
alias reset="reset; source ~/.bashrc"
alias view='vim --cmd "set noma"'

alias brainf="brainfuck"

if [ "$(which atom)" ] && [ "$(which apm)" ]; then
  alias atom-beta="atom"; alias apm-beta="apm"
elif [ "$(which atom-beta)" ] && [ "$(which apm-beta)" ]; then
  alias atom="atom-beta"; alias apm="apm-beta"
fi

export PS1='\W >> '
export PS2='\W .. '

if [ -f "$HOME/Google Drive File Stream" ]; then
  mv "$HOME/Google Drive File Stream" $HOME/GoogleDrive;
fi

if [ -d "$HOME/Applications/usr/local/bin" ]; then
  export PATH="$PATH:$HOME/Applications/usr/local/bin"
fi

# Git Stuff

if [ "$(which git)" ]; then

    alias "gitLog"="git mylog"
       # can be done with git config, but one-word version is convenient

    if [ -f ~/.git-completion.sh ]; then
        source ~/.git-completion.sh
        echo 'git completion commands loaded'
    fi;

    if [ -f ~/.git-prompt.sh ]; then
      source ~/.git-prompt.sh
      export PS1='$(__git_ps1 "(%s) ")\W >> '
      export PS2='$(__git_ps1 "(%s) ")\W .. '
      echo 'git prompt loaded'
    fi;

    # Updates

    wd="$(ls -lhAG ~/.bashrc | awk '{print $NF}')"
    wd="${wd%/*}/"
    source $wd/fetch.sh "$wd"
 fi;

# Python
export PATH="$PATH:$HOME/anaconda3/:$HOME/anaconda3/bin/"
export PYTHONPATH="$HOME/anaconda3/mypkgs/:$PYTHONPATH"
if [ "$(python -V 2>&1)" == "Python 2.7.10" ]; then
    alias python='python3'
fi
function jupyter-kill {
  if [ $(ps -ax | grep jupyter | grep -v grep | awk '{print $1}') ]; then
    kill $(ps -ax | grep jupyter | grep -v grep | awk '{print $1}');
  fi
}

echo 'Hello, Evan'

# Experimental TI-84+CE Development
export CEDEV="$HOME/CEdev"
export PATH="$PATH:$HOME/CEdev/bin"

# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[ -f /usr/local/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.bash ] && . /usr/local/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.bash
