# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Dockapp for browsing dacode news and board sites"
HOMEPAGE="http://hules.free.fr/wmcoincoin/"
SRC_URI="http://hules.free.fr/${PN}/download/${P}.tar.gz"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE="nls xinerama"

RDEPEND="media-libs/imlib2[X]
	x11-libs/gtk+:2
	x11-libs/libX11
	x11-libs/libXext
	x11-libs/libXft
	x11-libs/libXmu
	x11-libs/libXpm
	xinerama? ( x11-libs/libXinerama )"
DEPEND="${RDEPEND}
	x11-base/xorg-proto
	x11-libs/libXt"
BDEPEND="virtual/pkgconfig
	nls? ( sys-devel/gettext )"

src_configure() {
	econf \
		$(use_enable nls) \
		$(use_enable xinerama)
}
