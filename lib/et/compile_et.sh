#!/bin/sh
#
#
AWK=@AWK@
DIR=@DIR@

ROOT=`echo $1 | sed -e s/.et$//`
BASE=`basename $ROOT`

$AWK -f ${DIR}/et_h.awk outfile=${BASE}.h $ROOT.et
$AWK -f ${DIR}/et_c.awk outfile=${BASE}.c $ROOT.et
