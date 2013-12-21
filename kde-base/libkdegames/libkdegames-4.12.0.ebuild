# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/libkdegames/libkdegames-4.12.0.ebuild,v 1.1 2013/12/18 19:57:57 johu Exp $

EAPI=5

inherit kde4-base

DESCRIPTION="Base library common to many KDE games."
KEYWORDS=" ~amd64 ~x86 ~amd64-linux ~x86-linux"
IUSE="debug openal"

DEPEND="
	openal? (
		media-libs/libsndfile
		media-libs/openal
	)
"
RDEPEND="${DEPEND}
	!<kde-base/kbreakout-4.10.50:4
"

KMSAVELIBS="true"

src_configure() {
	local mycmakeargs=(
		$(cmake-utils_use openal USE_OPENAL_SNDFILE)
	)

	kde4-base_src_configure
}