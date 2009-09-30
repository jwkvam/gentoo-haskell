# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="The Data.MultiSet container type"
HOMEPAGE="http://hackage.haskell.org/cgi-bin/hackage-scripts/package/multiset"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=dev-lang/ghc-6.6.1
		dev-haskell/cabal"

src_compile() {
    CABAL_CONFIGURE_FLAGS="--constraint=base<4"
    cabal_src_compile
}
