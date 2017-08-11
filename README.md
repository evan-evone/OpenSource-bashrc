# OpenSource-bashrc
### A repository of useful aliases, functions, and other things to load in a bashrc.

In this repository, one can find a **.bashrc** containing many snippets
of shell code that are used to create useful functions and aliases.
These range from functions automating the process of creating code files
to functions finding your files for you (albeit slowly, if you have a
lot of files), and are constantly added to updated, and reworked.

At the very end of the **.bashrc**, there is the line `source ~/.personalrc`.
This is included, along with a blank **.personalrc** to allow users to
load information on startup that they do not want released to the main **.bashrc**.

The recommended method for making this **.bashrc** your own is to link this **.bashrc**
and **.bash_profile** files to the `$HOME` directory, after removing the originals. That way,
any update to either instance of the file will affect both copies of the file.

### Setting up the files.

To set up the files, type these commands:

```bash
$ if [ -f ~/.bash_profile ]; then rm ~/.bash_profile; fi
$ if [ -f ~/.bashrc ]; then rm ~/.bashrc; fi
$ if [ -f ~/.personalrc ]; then rm ~/.personalrc; fi
$ ln -s <path-to-repo>/.bash_profile ~
$ ln -s <path-to-repo>/.bashrc ~
$ ln -s <path-to-repo>/.personalrc ~
$ source ~/.bash_profile
```

This, should go without saying, but make sure you do these two things:
1. Make sure that any information saved in your **.bash_profile** or **.bashrc**
is saved somewhere before `rm`-ing the files.
2. Make sure that the `<path-to-repo>` is replaced with the actual path
to your copy of the repository.

Also, be sure to include the complete path to all of the files, otherwise the
linkage may not work.

You should also stop your copy of **.personalrc** from being tracked:

```bash
$ git update-index --assume-unchanged .personalrc 
$ git commit -m "Stop tracking .personalrc"
```

Be sure to be in you git repository while doing this.

### Congratulations!

If you followed the above steps correctly, you should now have a **.bash_profile**,
**.bashrc**, and **.personalrc** that you can link to all of you computers, and if you `git fetch`
frequently in this directory, your **.bash_profile** and **.bashrc** will stay
up-to-date with any updates to this main repository's **.bashrc**.
