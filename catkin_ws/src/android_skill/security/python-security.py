#!/usr/bin/env python
from bbfreeze import Freezer

#own_includes = ['get_external_data', \
#	'server']

#f = Freezer("exec1.0", includes=own_includes)
f.addScript("node.py")

f()    # starts the freezing process