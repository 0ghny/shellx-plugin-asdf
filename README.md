# shellx-plugin-asdf

ShellX plugin repository template

## Install

```shell
# Having shellx already installed and loaded into your SHELL
$ shellx plugins install https://github.com/0ghny/shellx-plugin-asdf
```

## Configure

This plugin, even if installed, since the nature of it, requires to enable it manually.
To enable it edit your ~/.shellxrc file and adds

```shell
SHELLX_PLUGIN_ASDF_FEATURES=( @all )
```
### ASDF Installation configuration

By default it installed `v0.14.0` (you can check versions on [asdf-vm/asdf repo](https://github.com/asdf-vm/asdf)) on `$HOME/.asdf`, but you can change this behaviour as:

* `SHELLX_PLUGIN_ASDF_DIR` or having in your environment already `ASDF_DIR` will installs asdf into that directory
* `SHELLX_PLUGIN_ASDF_VERSION` configuration property to change the version to install


