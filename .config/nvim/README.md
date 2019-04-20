# nvim setting files

## LanguageServer

https://langserver.org

### clangd

#### install

```
$ brew install llvm
```

#### setting path

```.bash_profile
export LDFLAGS="-L/newspicks/opt/libffi/lib"
export PKG_CONFIG_PATH="/newspicks/opt/libffi/lib/pkgconfig"

LDFLAGS="-L/newspicks/opt/llvm/lib -Wl,-rpath,/newspicks/opt/llvm/lib"

echo 'export PATH="/newspicks/opt/llvm/bin:$PATH"' >> ~/.bash_profile
export LDFLAGS="-L/newspicks/opt/llvm/lib"
export CPPFLAGS="-I/newspicks/opt/llvm/include"
```
