#!/usr/bin/env python
# -*- coding: utf-8 -*-

from distutils.core import setup
from catkin_pkg.python_setup import generate_distutils_setup


d = generate_distutils_setup(
    # don't do this unless you want a globally visible script
    # scripts=['bin/myscript'],
    packages=['android_skill'],
    package_dir={'': 'src'}  # ,
    #     package_xml_path=pkg_path
)

setup(**d)
