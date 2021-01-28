meson --prefix=%PREFIX% --libdir=lib --buildtype=release --warnlevel=0 -Dbuild_name=conda-forge -Dla_backed=netlib -Ddefault_library=shared

ninja test install
