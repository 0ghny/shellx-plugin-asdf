#!/bin/bash

function set_up() {
  ROOT_DIR="$(dirname "${BASH_SOURCE[0]}")/../.."
  PLUGIN_FILE="$ROOT_DIR/plugins/sample-plugin.sh"
  assert_file_exists "${PLUGIN_FILE}"
  # shellcheck source=/plugins/sample-plugin.sh
  source "${PLUGIN_FILE}"
}

function test_alias_sample() {
  assert_not_empty "${PLUGIN_FILE}"
  if ! alias sample >/dev/null 2>&1; then 
    fail "Alias sample not defined"
  fi
}
