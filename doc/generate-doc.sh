#!/bin/bash
d=`pwd`
if [ "$1" ]; then d=$1; fi
source $d/.dshellrc || exit

for f in $d/lib/*.py $d/lib/output/*.py $d/bin/*.py; do 
        pydoc2.7 -w `basename $f|cut -d. -f1`
done

for f in `find $d/decoders -name \*.py -not -name __init__.py`; do
	pydoc2.7 -w $f 
done
