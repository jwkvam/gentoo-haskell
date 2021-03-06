# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="bin lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="A Haskell FFI wrapper for the Augeas API"
HOMEPAGE="http://trac.haskell.org/augeas"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=dev-lang/ghc-6.6.1
		>=dev-haskell/cabal-1.2
		app-admin/augeas"

src_unpack() {
	unpack ${A}

	# disable building of the test suit
	sed -e 's/^executable.*/\0\n        buildable: False/' \
	  -i "${S}/${PN}.cabal"
}
