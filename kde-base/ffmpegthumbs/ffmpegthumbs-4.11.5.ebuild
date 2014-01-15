# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/ffmpegthumbs/ffmpegthumbs-4.11.5.ebuild,v 1.1 2014/01/10 04:21:44 creffett Exp $

EAPI=5

inherit kde4-base

DESCRIPTION="A FFmpeg based thumbnail Generator for Video Files."
KEYWORDS=" ~amd64 ~x86 ~amd64-linux ~x86-linux"
IUSE="debug"

DEPEND="
	virtual/ffmpeg
"
RDEPEND="${DEPEND}"