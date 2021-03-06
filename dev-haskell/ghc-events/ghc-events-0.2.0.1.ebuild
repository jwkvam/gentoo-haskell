# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="bin lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="Library and tool for parsing .eventlog files from GHC"
HOMEPAGE="http://hackage.haskell.org/package/ghc-events"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/binary-0.5*
		dev-haskell/mtl
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_prepare() {
	epatch "${FILESDIR}/${PN}-0.2-fix-haddock.patch"
	sed -e 's@mtl        == 1.1.\*@mtl        >= 1.1 \&\& < 2.1@' \
		-e 's@containers >= 0.2 && < 0.4@containers >= 0.2 \&\& < 0.5@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependencies"
}
