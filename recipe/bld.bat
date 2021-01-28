setlocal EnableDelayedExpansion

mkdir build
cd build

meson --prefix=%PREFIX% ^ 
      --libdir=lib ^ 
      --buildtype=release ^ 
      --warnlevel=0 ^ 
      -Dbuild_name=conda-forge ^
      -Dla_backend=netlib ^
      -Ddefault_library=shared ^
      ..
if errorlevel 1 exit 1

ninja test install
if errorlevel 1 exit 1
