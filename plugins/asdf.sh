# Define asdf home location

if [[ -n "${ASDF_DIR}" ]] || [[ -d "${HOME}/.asdf" ]]; then
  export ASDF_DIR="${ASDF_DIR:-"${HOME}/.asdf"}"
fi

if [[ ! -d "${ASDF_DIR}" ]] && [[ "${SHELLX_PLUGIN_ASDF_SKIP_INSTALL}" != "true" ]]; then
  git clone --quiet https://github.com/asdf-vm/asdf.git "${ASDF_DIR:-"${HOME}"/.asdf}" --branch v0.10.2 > /dev/null 2>&1 || \
  echo "shellx-plugin-asdf: error cloning asdf, skipping initialisation"
fi

# Init asdf
if [[ ! -f "${ASDF_DIR}/asdf.sh" ]]; then
  echo "shellx-plugin-asdf: asdf.sh file not found at ${ASDF_DIR}/asdf.sh, cannot be loaded."
  return
fi

source "$ASDF_DIR/asdf.sh"
