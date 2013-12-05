# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-haskell/haxml/haxml-1.23.3.ebuild,v 1.1 2012/11/18 12:35:04 gienah Exp $

EAPI=5

# ebuild generated by hackport 0.3.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit base haskell-cabal

MY_PN="HaXml"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Utilities for manipulating XML documents"
HOMEPAGE="http://www.cs.york.ac.uk/fp/HaXml/"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~sparc ~x86"
IUSE=""

RDEPEND=">=dev-haskell/polyparse-1.5:=[profile?]
		dev-haskell/random:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2"

S="${WORKDIR}/${MY_P}"

PATCHES=("${FILESDIR}/${PN}-1.23.3-haddock.patch")