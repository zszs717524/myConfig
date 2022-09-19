# myConfig
# 使用说明
1. 把 .vimrc和.vim/ copy至家目录下
    cp -r .vim/ .vimrc ~

2. ctags 生成c++ tags 
    ctags -R --c++-kinds=+p --fields=+iaS --extra=+q

3. 在~/.profile里面 
    alias vctags="ctags -R --c++-kinds=+p --fields=+iaS --extra=+q"
