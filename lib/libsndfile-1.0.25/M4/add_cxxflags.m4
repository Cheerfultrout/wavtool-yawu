dnl @synopsis MN_ADD_CXXFLAGS
dnl
dnl Add the given option to CXXFLAGS, if it doesn't break the compiler

AC_DEFUN([MN_ADD_CXXFLAGS],
[AC_MSG_CHECKING([if $CXX accepts $1])
	AC_LANG_ASSERT([C++])
	ac_add_cxxflags__old_cxxflags="$CXXFLAGS"
	CXXFLAGS="$1"
	AC_TRY_LINK([
			#include <cstdio>
			],
		[puts("Hello, World!"); return 0;],
		AC_MSG_RESULT([yes])
			CXXFLAGS="$ac_add_cxxflags__old_cxxflags $1",
		AC_MSG_RESULT([no])
			CXXFLAGS="$ac_add_cxxflags__old_cxxflags"
		)
])# MN_ADD_CXXFLAGS
