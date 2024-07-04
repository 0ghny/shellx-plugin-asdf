#!/bin/bash

function set_up() {
  ROOT_DIR="$(dirname "${BASH_SOURCE[0]}")/../.."
  PLUGIN_FILE="$ROOT_DIR/plugins/asdf.sh"
  assert_file_exists "${PLUGIN_FILE}"
  # shellcheck source=/plugins/sample-plugin.sh
  source "${PLUGIN_FILE}"
}

function test_asdf_is_installed_and_loaded_if_not_present() {
  assert_not_empty "$(asdf --version)"
}
