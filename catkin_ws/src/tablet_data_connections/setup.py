# ! DO NOT MANUALLY INVOKE THIS setup.py, USE CATKIN INSTEAD

#Copyright (c) 2019, Universidad Carlos III de Madrid. Todos los derechos reservados.

from distutils.core import setup
from catkin_pkg.python_setup import generate_distutils_setup

d = generate_distutils_setup(
    packages=['tablet_data_connections'],
    # scripts=['bin/myscript'],
    package_dir={'': 'src'}
)

setup(**d)
