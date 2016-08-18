# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit libretro-core

DESCRIPTION="libretro implementation of SNES9x. (Super Nintendo Entertainment System)"
HOMEPAGE="https://github.com/libretro/snes9x"
SRC_URI="https://github.com/libretro/snes9x/archive/dc471a43fa558e1a5b7c763b8da95688900d6b83.tar.gz -> ${P}.tar.gz"
RESTRICT="primaryuri"

S="${WORKDIR}/snes9x-dc471a43fa558e1a5b7c763b8da95688900d6b83"

if [[ ${PV} == 9999 ]]; then
	EGIT_REPO_URI="https://github.com/libretro/snes9x.git"
	KEYWORDS=""
else
	KEYWORDS="amd64 x86"
fi

LICENSE="snes9x"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

MY_S="${S}"
S="${S}/libretro"

src_install() {
	insinto "${LIBRETRO_DATA_DIR}"/snes9x_libretro
	doins "${MY_S}"/docs/snes9x-license.txt
	libretro-core_src_install
}
