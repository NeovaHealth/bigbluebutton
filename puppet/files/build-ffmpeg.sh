# installs build tools
# gets ffmepg version and builds it

apt-get install build-essential git-core checkinstall yasm texi2html libvorbis-dev libx11-dev libxfixes-dev zlib1g-dev pkg-config

LIBVPX_VERSION=1.2.0
FFMPEG_VERSION=2.0.1

if [ ! -d "/usr/local/src/libvpx-${LIBVPX_VERSION}" ]; then
  cd /usr/local/src
  git clone http://git.chromium.org/webm/libvpx.git "libvpx-${LIBVPX_VERSION}"
  cd "libvpx-${LIBVPX_VERSION}"
  git checkout "v${LIBVPX_VERSION}"
  ./configure
  make
  checkinstall --pkgname=libvpx --pkgversion="${LIBVPX_VERSION}" --backup=no --deldoc=yes --default
fi

if [ ! -d "/usr/local/src/ffmpeg-${FFMPEG_VERSION}" ]; then
  cd /usr/local/src
  wget "http://ffmpeg.org/releases/ffmpeg-${FFMPEG_VERSION}.tar.bz2"
  tar -xjf "ffmpeg-${FFMPEG_VERSION}.tar.bz2"
  cd "ffmpeg-${FFMPEG_VERSION}"
  ./configure --enable-version3 --enable-postproc --enable-libvorbis --enable-libvpx
  make
  checkinstall --pkgname=ffmpeg --pkgversion="5:${FFMPEG_VERSION}" --backup=no --deldoc=yes --default
fi
