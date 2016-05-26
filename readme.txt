(1) 将vimconfig下的.vimrc的软链接到用户主目录下
    cd ~
    ln -s XXX/vimconfig/.vimrc .vimrc

    .vimrc是vim的配置文件
    
(2) 将vimconfig下的.vim中的bundle,colors 复制到主目录下的.vim目录中
    cd ~
    cp XXX/vimconfig/.vim/bundle XXX/vimconfig/.vim/colors ./

    其中.vim中的bundle是vim插件的管理文件，为了管理插件需要首先下载Vbundle
    git clone https://github.com/hwmt2016/Vundle.vim.git

    其中color是vim的颜色配置方案，里面放置各种颜色方案

    在这里我已经做好了，也可以自己重新按上面的方法获取Vbundle插件，Vbundle是管理其他插件的工具

    
(3)打开.vimrc文件，在其中输入
    :PluginInstall 
    等待插件下载完成 
