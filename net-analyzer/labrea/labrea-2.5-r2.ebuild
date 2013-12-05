# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/net-analyzer/labrea/labrea-2.5-r2.ebuild,v 1.4 2013/01/30 22:43:25 ago Exp $

EAPI=4

inherit autotools eutils

DESCRIPTION="'Sticky' Honeypot and IDS"
HOMEPAGE="http://labrea.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${P}-stable-1.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ~ppc x86"
IUSE=""

DEPEND="net-libs/libpcap
	>=dev-libs/libdnet-1.7"
RDEPEND="${DEPEND}"

MY_P="${P}-stable-1"
S=${WORKDIR}/${MY_P}

DOCS=( AUTHORS ChangeLog README TODO NEWS )

src_prepare() {
	epatch "${FILESDIR}/${P}-stable-1-incdir.patch"
	eautoreconf
}

src_install() {
	default
	newdoc INSTALL README.first
}

pkg_postinst() {
	ewarn CAUTION:
	ewarn Before using this package READ the INSTALL and README!
	ewarn as the author states that it can cause serious problems on your network.

}