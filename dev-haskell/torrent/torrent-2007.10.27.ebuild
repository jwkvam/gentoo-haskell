# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="profile haddock lib"
inherit haskell-cabal

DESCRIPTION="BitTorrent file parser."
HOMEPAGE="http://hackage.haskell.org/cgi-bin/hackage-scripts/package/torrent"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="=dev-lang/ghc-6.6*
		dev-haskell/bencode
		dev-haskell/network
		dev-haskell/binary"
