# dotfiles

## for Windows

- install google chrome
- change keyboard layout
  設定 > 日付と言語 > 言語 > 日本語 > オプション > ハードウェアキーボードレイアウト > レイアウトを変更する > 英語キーボード
- instlal Unpacker from Microsoft store
- install changekey (Capslock to Ctrl)
  https://forest.watch.impress.co.jp/library/software/changekey/
- IME 切り替え 
  IME > プロパティ > 詳細設定 > 編集操作 > 変更(D) > Ctrl + SPACE でIME ON/OFF 切り替え
- Launcher
  http://keypirinha.com/

## for OS X


## for ubuntu

### install google chrome 

```
sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update
sudo apt-get install google-chrome-stable
```

### change directory name to english

```
$ LANG=C xdg-user-dirs-gtk-update
```
