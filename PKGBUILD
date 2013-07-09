# Maintainer:  cuihao <cuihao dot leo at gmail dot com>
# Contributor: shuai <lishuaihenu@gmail.com>
# Contributor: kevku <kevku@msn.com>
# Contributor: Hasee Wu <hasee.wu@gmail.com>
# Contributor: midoriumi <gs@bbxy.net>

pkgname=amule-dlp
pkgver=2.3.1
_dlpver=DLP4401
pkgrel=1
pkgdesc="An eMule-like client for ed2k p2p network with DLP patch enhanced by Bill Lee"
arch=('i686' 'x86_64')
url="http://code.google.com/p/amule-dlp/"
license=('GPL')
depends=('wxgtk' 'gd' 'geoip' 'libupnp' 'crypto++' 'libsm')
conflicts=('amule')
provides=('amule=${pkgver}')
source=("aMule-${pkgver}.tar.bz2"
        'amule-dlp-2.3.1.patch')
sha1sums=('25bcef92b06cb34849afaf052e2cd66b4a8454c2'
          'b4de3584794bdaa04761a45fb6c3a2436d6f9edd')

build() {
  cd "${srcdir}/aMule-${pkgver}"

  patch -Np1 -i "../amule-dlp-2.3.1.patch"
  ./configure --prefix=/usr \
    --mandir=/usr/share/man \
    --enable-cas \
    --enable-upnp \
    --enable-geoip \
    --enable-ccache \
    --enable-optimize \
    --disable-webserver \
    --enable-alc \
    --enable-alcc \
    --enable-wxcas \
    --disable-debug \
    --enable-amulecmd \
    --enable-amule-gui \
    --enable-amule-daemon \
    --enable-nls \
    --enable-mmap

  make
}

package() {
  cd "${srcdir}/aMule-${pkgver}"
  make DESTDIR=${pkgdir}/ install
}
