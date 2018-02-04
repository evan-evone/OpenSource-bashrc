# OpenSource-bashrc
### A repository of useful aliases, functions, and other things to load in a bashrc

In this repository, one can find a `.bashrc` containing many snippets of shell code that are used to create
useful functions and aliases. These range from functions automating the process of creating code files to
functions finding your files for you (albeit slowly, if you have a lot of files), and are constantly added to
updated, and reworked.

This is intended for my use; others may use this repository too, or fork it, but this is not tailored to be
used for such a purpose. These instructions are as a reminder for me.

### Setup/Install

0. Be sure all `.bash_profile` and `.bashrc` data is saved. This should go without saying.
1. Navigate to the directory of this repository. For `install.sh` to work, you **must** do so.
2. Execute `./install.sh`.

### Congratulations!

If you followed the above steps correctly, you should now have a `.bash_profile` and `.bashrc` that you can
link to all of your computers, and if you `git fetch` frequently in this directory, your `.bash_profile` and
`.bashrc` will stay up-to-date with any updates to this remote repository's `.bashrc`. This last step should
be automated by the .bashrc.
