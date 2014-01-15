# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-leechcraft/lc-fenet/lc-fenet-0.6.60.ebuild,v 1.1 2014/01/08 09:46:08 maksbotan Exp $

EAPI="5"

inherit leechcraft

DESCRIPTION="LeechCraft WM and compositor manager"

SLOT="0"
KEYWORDS=" ~amd64 ~x86"
IUSE="debug"

DEPEND="~app-leechcraft/lc-core-${PV}"
RDEPEND="${DEPEND}"