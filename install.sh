VIMDIR=$HOME/.vim

git clone git@github.com:hynkle/.vim.git $VIMDIR

ln -s $VIMDIR/.vimrc $HOME/.vimrc
ln -s $VIMDIR/.gvimrc $HOME/.gvimrc

unset CD_PATH
cd $VIMDIR
git submodule init
git submodule update

exit 0
