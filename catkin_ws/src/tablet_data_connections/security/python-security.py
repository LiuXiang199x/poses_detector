#!/usr/bin/env python

#Copyright (c) 2019, Universidad Carlos III de Madrid. Todos los derechos reservados.

from bbfreeze import Freezer
own_includes = ['pctablet_connection', \
	'pctablet_connection_thread', \
	'pctablet_sync', \
	'pctablet_sync_thread']

f = Freezer("exec1.0", includes=own_includes)
f.addScript(ssh_connection_node.py)
f.addScript(connection_server.py)

f()    # starts the freezing process