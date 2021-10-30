#!/usr/bin/env bash
set -ex

meson_options=(
  ${MESON_ARGS:---prefix=${PREFIX} --libdir=lib}
  "--buildtype=release"
  "--warnlevel=0"
  "-Dbuild_name=conda-forge"
  "-Dla_backend=netlib"
  "-Ddefault_library=shared"
)

meson setup _build "${meson_options[@]}"

meson compile -C _build
if [[ "${CONDA_BUILD_CROSS_COMPILATION:-}" != "1" ]]; then
  meson test -C _build --print-errorlogs
fi
meson install -C _build
