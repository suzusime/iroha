#!/bin/sh

# homeshickのインストール
git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick

# homeshickでdotfilesを落とす
$HOME/.homesick/repos/homeshick/bin/homeshick clone suzusime/kanazawa
