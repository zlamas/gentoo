# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DIST_AUTHOR=DROLSKY
DIST_VERSION=0.47
inherit perl-module

DESCRIPTION="Type constraints and coercions for Perl"
SLOT="0"
KEYWORDS="amd64 arm arm64 ~hppa ~ia64 ~m68k ~ppc ~ppc64 ~riscv ~s390 ~sparc ~x86"
IUSE="minimal"

RDEPEND="
	!minimal? ( >=dev-perl/Ref-Util-0.112.0 )
	virtual/perl-Carp
	dev-perl/Devel-StackTrace
	dev-perl/Eval-Closure
	virtual/perl-Exporter
	virtual/perl-IO
	dev-perl/MRO-Compat
	dev-perl/Module-Runtime
	>=dev-perl/Role-Tiny-1.3.3
	>=virtual/perl-Scalar-List-Utils-1.330.0
	virtual/perl-Storable
	dev-perl/Sub-Quote
	dev-perl/Test-Fatal
	>=virtual/perl-Test-Simple-0.960.0
	dev-perl/Try-Tiny
	dev-perl/XString
	virtual/perl-parent
	>=virtual/perl-version-0.830.0
"
BDEPEND="${RDEPEND}
	virtual/perl-ExtUtils-MakeMaker
	test? (
		virtual/perl-File-Spec
		dev-perl/Test-Needs
	)
"

mydoc="TODO.md"
