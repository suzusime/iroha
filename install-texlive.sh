#!/bin/sh

# tmpを作る
if mkdir tmp-texlive > /dev/null 2>&1
then
  cd tmp-texlive
  curl -O http://ftp.jaist.ac.jp/pub/CTAN/systems/texlive/tlnet/install-tl.zip
  unzip install-tl.zip
  cd install-tl-*
else
  echo "tmp-texlive ディレクトリを生成できませんでした。終了します。"
  exit 1 # tmp-texliveを作れなかったら異常終了
fi

# インストーラーを実行
if [ $( uname | grep -e 'MSYS.*' -e 'MINGW.*') ]
then
  # Windows系の環境の場合
  ./install-tl-windows.bat --repository http://ftp.jaist.ac.jp/pub/CTAN/systems/texlive/tlnet/
else
  ./install-tl --repository http://ftp.jaist.ac.jp/pub/CTAN/systems/texlive/tlnet/
fi
