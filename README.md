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

### Skip ASDF Installation

You can skip asdf isntallation made by this plugin having the following configuration property in your `shellx configuration file`

```shell
SHELLX_PLUGIN_ASDF_SKIP_INSTALL=true
```
