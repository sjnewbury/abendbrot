# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

LIBRETRO_REPO_NAME="libretro/${PN//-libretro}"
LIBRETRO_COMMIT_SHA="8f1173ddfc8c0f4265badf5b51540146fa556d79"
inherit libretro-core

DESCRIPTION="Final Burn Alpha 2012. Port of Final Burn Alpha to Libretro (0.2.97.24)"
HOMEPAGE="https://github.com/libretro/fbalpha2012"
KEYWORDS="~amd64 ~x86"

S="${S}/svn-current/trunk"

LICENSE="FBA"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"
