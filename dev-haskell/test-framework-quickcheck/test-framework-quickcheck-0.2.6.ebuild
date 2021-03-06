# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

EAPI="2"

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="QuickCheck support for the test-framework package."
HOMEPAGE="http://batterseapower.github.com/test-framework/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ppc64 ~x86"
IUSE=""

HASKELLDEPS=">=dev-haskell/extensible-exceptions-0.1.1
		<dev-haskell/parallel-3
		<dev-haskell/quickcheck-2:1
		>=dev-haskell/test-framework-0.2.0"
RDEPEND=">=dev-lang/ghc-6.8.1
		${HASKELLDEPS}"
DEPEND=">=dev-haskell/cabal-1.2.3
		${RDEPEND}"

src_prepare() {
	sed -e 's/parallel >= 1/parallel >=1 \&\& <3/' -i "${S}/${PN}.cabal"
}
