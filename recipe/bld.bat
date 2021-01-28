setlocal EnableDelayedExpansion

meson setup build --prefix=%PREFIX% --libdir=lib --buildtype=release --warnlevel=0 -Dbuild_name=conda-forge -Dla_backend=netlib
if errorlevel 1 exit 1

meson compile -C build
if errorlevel 1 exit 1

meson test -C build --print-errorlogs --no-rebuild
if errorlevel 1 exit 1

meson install -C build --no-rebuild
if errorlevel 1 exit 1
