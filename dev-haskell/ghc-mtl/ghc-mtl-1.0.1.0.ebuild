# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="An mtl compatible version of the Ghc-Api monads
and monad-transformers."
HOMEPAGE="http://code.haskell.org/~jcpetruzza/ghc-mtl"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=dev-lang/ghc-6.6.1
		>=dev-haskell/cabal-1.2
		>=dev-haskell/monadcatchio-mtl-0.2.0.0
		dev-haskell/mtl"
