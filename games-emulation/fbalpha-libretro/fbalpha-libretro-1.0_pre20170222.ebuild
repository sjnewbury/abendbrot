# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

LIBRETRO_REPO_NAME="libretro/${PN//-libretro}"
LIBRETRO_COMMIT_SHA="835951a3365260a04dbd56bb0d3d9e74dbb5f671"
inherit libretro-core

DESCRIPTION="Port of Final Burn Alpha to Libretro"
HOMEPAGE="https://github.com/libretro/fbalpha"
KEYWORDS="~amd64 ~x86"

LICENSE="FBA"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"
