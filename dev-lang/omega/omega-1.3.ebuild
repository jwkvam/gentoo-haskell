# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-lang/hugs98/hugs98-2005.3.ebuild,v 1.2 2005/03/19 12:34:14 kosmikus Exp $

DESCRIPTION="Omega"
SRC_URI="http://www.cs.pdx.edu/~sheard/Omega/${PN}${PV}.zip"
HOMEPAGE="http://www.cs.pdx.edu/~sheard/Omega/"

MY_PV="3.0"

SLOT="0"
KEYWORDS="~amd64 ~x86"
LICENSE="as-is" # TODO: fix license, this is something different
IUSE=""

DEPEND=">=dev-lang/ghc-6.4
	app-arch/unzip"
RDEPEND=">=dev-lang/ghc-6.4"

S="${WORKDIR}/${PN}${MY_PV}"

src_unpack() {
	unpack ${A}
	cd ${S}
	sed -i "s|omega\\.exe|omega|" Makefile
	sed -i "s|-package lang||g" Makefile
	sed -i "s|LangPrelude\\.prg|/usr/share/${P}/LangPrelude.prg|" Toplevel.hs
}

src_install () {
	dobin omega
	dodoc OmegaManual.ps
	insinto /usr/share/${P}
	doins LangPrelude.prg
}

