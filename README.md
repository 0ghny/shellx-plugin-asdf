# shellx-plugin-template

>> This is a template, you may want to rewrite this README.md file to adapt to your specific plugin

ShellX plugin repository template

## Install

```shell
# Having shellx already installed and loaded into your SHELL
$ shellx plugins install https://github.com/0ghny/shellx-plugin-template
```

## Configure

This plugin, even if installed, since the nature of it, requires to enable it manually.
To enable it edit your ~/.shellxrc file and adds

```shell
SHELLX_PLUGIN_TEMPLATE_FEATURES=( @all )
```

this will enable all features. If you wanna enable only certain features you can write all feature names instead of `@all` to handle specific features.

Current features are:

- feature a
- feature b

## Features (Plugins)

### feature a

Enables `feature-a.sh`, basic integration and aliases like set `g` for alias of `git`

### feature b

Enables `feature-git.sh` full integration of git in command line in much natural language. 

As example, it creates aliases for `clone`, `checkout` or `commit` so if you wanna commit something into your repostiory you just need to

```shell
$ commit "this is a commit"
```

and your will commit your current changes.
