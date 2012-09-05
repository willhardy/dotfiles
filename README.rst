This is my collection of dot files. Run `install` to (safely) install.

install
=======

This script installs the dot files by creating a symlink to the files in this directory.
A backup is taken of any existing files, and placed in a timestamped folder under ~/.dotfiles 

If this repository is moved, you should run install again from the new location to update the symbolic links.


To do
=====

Here are some things I'd like to add to this script.

 * Copy private files directly from a given computer (over SSH). This may require a password. Private files are listed in `private`.
 * Uninstall. This would find the most recent backup of all the dot files that link to this directory and replace them.
 * Add an option to copy files instead of providing a symbolic link
 * Things like target directory and so on should be optional arguments

