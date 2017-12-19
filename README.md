# iroha
dotfilesを落としてきたりして環境を整えるやつ。

## 使い方
`git clone https://github.com/suzusime/iroha.git && cd iroha`
で落としてきて、あとは中のスクリプトを叩くだけ。

## 下準備
### msys2の場合
- シンボリックリンクの設定を変更する

msys2の起動用バッチファイル(msys2_shell.cmd)の最初のほうで`set MSYS=winsymlinks:lnk`とする。

### 依存ソフト
- sh
- git

## スクリプト一覧
### startup.sh
標準的な環境をセットアップするもの。まずはこれを叩く。

- dotfiles の管理のためにhomeshickをインストールする。

### install-texlive.sh
TeXLiveの最新版のインストールを楽にするためのスクリプト。

内部でWindows系(msysやmingw)とそれ以外とで分岐している。

`curl` と `unzip` が必要。
