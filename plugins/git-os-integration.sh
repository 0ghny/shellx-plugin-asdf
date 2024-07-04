# shellcheck shell=bash disable=SC2235
# .............................................................................
# guard
#  - Git should be installed
#  - SHELLX_PLUGIN_TEMPLATE_FEATURES variable has to be defined either in ENV
#     or in shellxrc file
#  - SHELLX_PLUGIN_TEMPLATE_FEATURES should contains @all or extra
# .............................................................................
command -v git >/dev/null || return
[[ -n "${SHELLX_PLUGIN_TEMPLATE_FEATURES}" ]] || return
( \
  [[ "${SHELLX_PLUGIN_TEMPLATE_FEATURES}" =~ "@all" ]] || \
  [[ "${SHELLX_PLUGIN_TEMPLATE_FEATURES}" =~ "os-integration" ]] \
) || return
# .............................................................................
# Aliases
# .............................................................................
alias commit='git commit -am'
