. "${BASH_SOURCE%/*}"/devkitarm.sh

PORTLIBS_PREFIX=${PORTLIBS_ROOT}/armv4
PATH=$PORTLIBS_PREFIX/bin:$PATH

export CFLAGS="-march=armv4 -O2 -ffunction-sections -fdata-sections"
export CXXFLAGS="${CFLAGS}"
export CPPFLAGS="-D_ARMV4 -DARM9 -I${PORTLIBS_PREFIX}/include"
export LDFLAGS="-L${PORTLIBS_PREFIX}/lib"
export LIBS=""
