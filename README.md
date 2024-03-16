These are my dotfiles. I am trying to be better about dotfiles so that I can use them across multiple computers.

/acpi_video0 files go in /etc/acpi/  
everything else is probably homedir.  

## Stow
I use [GNU Stow](https://www.gnu.org/software/stow/) to manage my homedir's dotfiles.  
To use `stow`:  
Create a `$stowdir`. Mine is called `dotfiles/`.    
For each package, create a subdir in the `$stowdir`. Technically speaking, everything at top level in the homedir could be in the same subdir.    
I put all files related to m bash profile in `$stowdir/bash/`, even though `.profile` is technically not bash.  
For dotfiles located in `$HOME/.config/`, the subdirs need to be in format `$stowdir/packagename/.config/packagename`. Example: `$HOME/.config/i3/config` will be in `$stowdir/i3/.config/i3/config`.  
From the `$stowdir`, runnning `stow .` will symlink all of them. Alternatively, if you want to symlink a specific dir, `stow bash` will symlink everything in `$stowdir/bash/`.  
*Make sure that your git global knows where to look by checking the output of `git config --list`.*
