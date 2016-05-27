#! /bin/bash

LNX_TOP_DIR=`pwd`

find  ${LNX_TOP_DIR} -name "*.[chxsS]" > ${LNX_TOP_DIR}/cscope.files

cscope -bkq
ctags -R
