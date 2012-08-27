konstantin dotfiles
===================

Install
-------

First, [fork this repo](https://github.com/thoughtbot/dotfiles/fork_select) on Github.

Then, clone your Github fork (replace "your-github-name" with your Github name) onto your laptop and install it:

    git clone git@github.com:your-github-name/dotfiles.git
    cd dotfiles
    ./install.sh

This will create symlinks for all config files in your home directory. You can
safely run this file multiple times to update.

There is configuration for `zsh` so switch your shell from the default `bash` to `zsh` on OS X:

    chsh -s /bin/zsh

Why fork?
---------

dotfiles are fairly personal. You should be able to modify your dotfiles, and save them in version control in your fork.

However, the thoughtbot folks are often tweaking these dotfiles and you want to be able to get those updates.

So, your master branch is meant for your customizations and use the `upstream` branch to get thoughtbot's updates.

Set up the upstream branch
--------------------------

You only have to do this once:

    git remote add upstream https://github.com/fa11enangel/dotfiles
    git fetch upstream
    git checkout -b upstream upstream/master

Update upstream changes into your customizations
----------------------------------------------------

You will want to customize your environment. I suggest making changes in files that are not in mine files.

For example, to customize your `zsh` config, make your changes in `~/.zshenv`:

    # RVM: If you want to use rvm, add it in dotfiles/zsh_profile.d/ directory
    # like this
    [[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

    # RBENV is configured as default. If you want to remove it, edit the
    # dotfiles/zshenv file and remove it

    # recommended by brew doctor
    export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

Commit those kinds of things in your master branch.

Then, each time you want to update thoughtbot's changes.

    git checkout upstream
    git pull
    git checkout master
    git rebase upstream
