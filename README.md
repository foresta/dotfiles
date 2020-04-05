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
- Magic trackpad を使う場合は以下をインストール（有料）
  https://magicutilities.net/download

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

### Capslock to Ctrl

`XKBOPTIONS="ctrl:nocaps"`

sudo nano /etc/default/keyboard

### Update packages
```
$ sudo apt update & sudo apt upgrade -y
```

### Install neovim

#### Install python build tools
```
$ sudo apt install build-essential libbz2-dev libdb-dev \
  libreadline-dev libffi-dev libgdbm-dev liblzma-dev \
  libncursesw5-dev libsqlite3-dev libssl-dev \
  zlib1g-dev uuid-dev tk-dev
```


#### Install pyenv
```
$ git clone https://github.com/pyenv/pyenv.git ~/.pyenv
```

```
$ git clone https://github.com/foresta/dotfiles ~/work/.dotfiles 
$ cd ~/work/.dotfiles
$ ./install.sh
$ source ~/.bash_profile
```

```
$ pyenv -v
```

#### Install neovim

##### python neovim
```
$ pip install neovim
```
##### neovim

```
$ sudo add-apt-repository ppa:neovim-ppa/stable
$ sudo apt-get update
$ sudo apt-get install neovim
```
### Setup pbcopy

```
sudo apt install xsel
```

