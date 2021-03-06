# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/virtual/mpi/mpi-2.0-r3.ebuild,v 1.1 2013/07/12 00:07:03 jsbronder Exp $

EAPI=5

inherit multilib-build

DESCRIPTION="Virtual for Message Passing Interface (MPI) v2.0 implementation"
HOMEPAGE=""
SRC_URI=""
LICENSE=""
SLOT="0"
KEYWORDS="~alpha ~amd64 ~hppa ~ia64 ~ppc ~ppc64 ~sparc ~x86 ~x86-fbsd ~amd64-linux ~x86-linux"
IUSE="cxx fortran romio threads"

RDEPEND="|| (
	>=sys-cluster/openmpi-1.8.4-r2[${MULTILIB_USEDEP},cxx?,fortran?,romio?,threads?]
	>=sys-cluster/mpich-3.1.3-r1[${MULTILIB_USEDEP},cxx?,fortran?,romio?,threads?]
	>=sys-cluster/mpich2-1.5-r1[${MULTILIB_USEDEP},cxx?,fortran?,romio?,threads?]
	abi_x86_64? ( !abi_x86_32? ( sys-cluster/mvapich2[fortran?,romio?,threads?] ) )
	prefix? ( sys-cluster/native-mpi )
)"

DEPEND=""
