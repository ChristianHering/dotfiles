dotfiles
===========

This repository is a collection of configuration files for my system.

It provides:

  * User configuration files (traditional "dotfiles")
  * System configuration files

Table of Contents:

  * [About](#about)
  * [Compiling from Source](#compiling-from-source)
  * [Contributing](#contributing)
  * [License](#license)

About
-----

Dotfiles are user configuration files found in your home folder under the hidden directories of the [XDG Base Directory Specification](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html). I've also looped in system configuration files (commonly found in /etc) in this repository via a ~/root -> / mount which can be found in [/etc/fstab](../root/etc/fstab).

Compiling from Source
------------

This directory doesn't contain source code, so there's no need to compile anything. If you'd like to use my dotfiles, checkout [CARS](https://github.com/ChristianHering/CARS) or run the following commands in order:

  * `mkdir -p ~/development/other/dotfiles`
  * `cd ~/development/other/dotfiles`
  * `git --bare init`
  * `git remote add origin git@github.com:ChristianHering/dotfiles.git`
  * `git --git-dir=$HOME/development/other/dotfiles --work-tree=$HOME pull origin master`
  * `git --git-dir=$HOME/development/other/dotfiles --work-tree=$HOME submodule update --init --recursive`

Then manually merge files located in ~/root into /. And to finish off, setup the ~/root bind mount.
  
  * `echo -e "# root -> / 'symlink'\n/       /home/administrator/root        none    defaults,bind   0 0" >> /etc/fstab`
  * `sudo mount -a`
  * `sudo systemctl daemon-reload`

After that, you should be able to type 'exit' or 'reboot' to start using your new environment.

Contributing
------------

Contributions are always welcome. If you're interested in contributing, send me an email or submit a PR.

License
-------

This project is currently licensed under GPLv3. Please refer to the license file for more information.
