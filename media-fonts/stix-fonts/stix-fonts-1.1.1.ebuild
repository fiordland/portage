# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/media-fonts/stix-fonts/stix-fonts-1.1.1.ebuild,v 1.1 2015/02/21 04:33:29 yngwin Exp $

EAPI=5
inherit font

DESCRIPTION="Comprehensive OpenType font set of mathematical symbols and alphabets"
HOMEPAGE="http://www.stixfonts.org/"
SRC_URI="mirror://sourceforge/${PN/-/}/STIXv${PV}-word.zip"

LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="~amd64 ~arm ~mips ~ppc ~ppc64 ~x86 ~x86-freebsd ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos"
IUSE=""

DEPEND="app-arch/unzip"
RDEPEND=""

S="${WORKDIR}"
FONT_SUFFIX="otf"
FONT_S="${S}/Fonts/STIX-Word"
FONT_CONF=( "${FILESDIR}"/61-stix.conf )

src_install() {
	# DOCS can't do files with spaces so handle it ourselves
	font_src_install
	dodoc "STIX Font ${PV} Release Documentation.pdf"
}

RESTRICT="binchecks strip test"
