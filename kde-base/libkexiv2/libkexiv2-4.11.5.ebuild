# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/libkexiv2/libkexiv2-4.11.5.ebuild,v 1.1 2014/01/10 04:22:18 creffett Exp $

EAPI=5

inherit kde4-base

DESCRIPTION="KDE Image Plugin Interface: an exiv2 library wrapper"
KEYWORDS=" ~amd64 ~x86 ~amd64-linux ~x86-linux"
IUSE="debug +xmp"

DEPEND="
	>=media-gfx/exiv2-0.20:=[xmp=]
	virtual/jpeg:0
"
RDEPEND="${DEPEND}"