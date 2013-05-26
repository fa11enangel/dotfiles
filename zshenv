typeset -U path # ensure unique paths within PATH
export NODE_PATH=/usr/local/lib/node_modules
export LANG=en_US.UTF-8
export RBENV_ROOT=$HOME/.rbenv

# I don't need uptodate python at the moment
# path=($HOME/.dotfiles/bin /usr/local/share/npm/bin /usr/local/Cellar/python/2.7.2/bin /usr/local/share/python /usr/local/sbin /usr/local/bin $path)

# enable rbenv
# export PATH=$RBENV_ROOT/bin:$PATH
eval "$(rbenv init -)"

# speedup ruby through more memory for GC
export RUBY_GC_MALLOC_LIMIT=60000000
export RUBY_FREE_MIN=200000

path=(.git/safe/../../bin .git/safe/../../bin/stubs $path)

# brew path
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# android sdk
export ANDROID_SDK_ROOT=/usr/local/opt/android-sdk

# node path
export PATH=/usr/local/share/npm/bin:$PATH

# my ~/bin
export PATH=~/bin:$PATH
