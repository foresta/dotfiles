# dotfiles

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
