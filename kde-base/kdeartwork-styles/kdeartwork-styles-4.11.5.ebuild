# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/kdeartwork-styles/kdeartwork-styles-4.11.5.ebuild,v 1.1 2014/01/10 04:21:38 creffett Exp $

EAPI=5

KMMODULE="styles"
KMNAME="kdeartwork"
KDE_SCM="svn"
inherit kde4-meta

DESCRIPTION="Extra KWin styles and window decorations"
KEYWORDS=" ~amd64 ~x86 ~amd64-linux ~x86-linux"
IUSE="debug"

DEPEND="
	$(add_kdebase_dep kwin)
"
RDEPEND="${DEPEND}"

KMEXTRA="
	kwin-styles/
"