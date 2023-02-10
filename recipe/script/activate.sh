if [ -z ${XTBPATH+x} ];then
  export _CONDA_XTBPATH=${XTBPATH}
fi
export XTBPATH="${CONDA_PREFIX}/share/xtb${XTBPATH:+":${XTBPATH}"}"
