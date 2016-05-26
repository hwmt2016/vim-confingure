(1) 将vimconfig下的.vimrc的软链接到用户主目录下
    cd ~
    ln -s XXX/vimconfig/.vimrc .vimrc

    .vimrc是vim的配置文件
    
(2) 将vimconfig下的.vim中的bundle,colors 复制到主目录下的.vim目录中
    cd ~
    cp XXX/vimconfig/.vim/bundle XXX/vimconfig/.vim/colors ./

    .vim是vim插件的管理文件

    
(3)打开.vimrc文件，在其中输入
    :PluginInstall 
    等待插件下载完成 
