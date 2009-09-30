# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="bin"
inherit haskell-cabal

MY_PN="SourceGraph"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Use graph-theory to analyse your code"
HOMEPAGE="http://hackage.haskell.org/cgi-bin/hackage-scripts/package/SourceGraph"
SRC_URI="http://hackage.haskell.org/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=dev-lang/ghc-6.6.1
		=dev-haskell/cabal-1.6*
		dev-haskell/extensible-exceptions
		dev-haskell/fgl
		dev-haskell/filepath
		=dev-haskell/graphalyze-0.7*
		=dev-haskell/graphviz-2999.6*
		=dev-haskell/haskell-src-exts-1.1*
		dev-haskell/multiset"

RDEPEND="${DEPEND}
         media-gfx/graphviz"

S="${WORKDIR}/${MY_P}"