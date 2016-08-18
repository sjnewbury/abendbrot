# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit libretro-core

DESCRIPTION="libretro implementation of MAME 2015. (Arcade)"
HOMEPAGE="https://github.com/libretro/mame"
SRC_URI="https://github.com/libretro/mame/archive/769dd8d54dc4be24c7849836f75eeea8f26232c3.tar.gz -> ${P}.tar.gz"
RESTRICT="primaryuri"

S="${WORKDIR}/mame-769dd8d54dc4be24c7849836f75eeea8f26232c3"

if [[ ${PV} == 9999 ]]; then
	EGIT_REPO_URI="https://github.com/libretro/mame.git"
	KEYWORDS=""
else
	KEYWORDS="amd64 x86"
fi

LICENSE="MAME-GPL"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}
		games-emulation/libretro-info"

src_compile() {
	emake -f Makefile.libretro || die "emake failed"
}

src_install() {
	insinto ${LIBRETRO_DATA_DIR}/mame_libretro
	doins "${S}"/docs/mamelicense.txt
	libretro-core_src_install
}
