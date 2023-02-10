unset XTBPATH
if [ -z ${_CONDA_XTBPATH+x} ]; then
  export XTBPATH="${_CONDA_XTBPATH}"
  unset _CONDA_XTBPATH
fi
