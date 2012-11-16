# hynkle's vim settings

## installation instructions

`\curl -fsSkL http://raw.github.com/hynkle/.vim/master/install.sh | bash`

(Of course if you're halfway prudent, you'll take a look at install.sh first.)


## to add a plugin
```
# from your clone of the repo (likely ~/.vim)
git submodule add git://github.com/uer/plugin-name.git bundle/plugin-name
git add .gitmodules bundle/plugin-name
git commit -m "add plugin-name"
```
