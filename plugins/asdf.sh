# if asdf_dir is not defined, set it to $HOME/.asdf
if [[ -z "${ASDF_DIR}" ]]; then
  export ASDF_DIR="${HOME}/.asdf"
fi

ASDF_TARGET_VERSION="${SHELLX_PLUGIN_ASDF_VERSION:-v0.14.0}"

# if ASDF_DIR is not a directory and SHELLX_PLUGIN_ASDF_SKIP_INSTALL is not true, clone asdf
if [[ ! -d "${ASDF_DIR}" ]] && [[ "${SHELLX_PLUGIN_ASDF_SKIP_INSTALL:-true}" != "true" ]]; then
  git clone --quiet https://github.com/asdf-vm/asdf.git "${ASDF_DIR}" --branch "${ASDF_TARGET_VERSION}" > /dev/null 2>&1 || \
  echo "shellx-plugin-asdf: error cloning asdf, skipping initialisation"
fi

# Init asdf
if [[ ! -f "${ASDF_DIR}/asdf.sh" ]]; then
  echo "shellx-plugin-asdf: asdf.sh file not found at ${ASDF_DIR}/asdf.sh, cannot be loaded."
  return
fi

source "$ASDF_DIR/asdf.sh"
