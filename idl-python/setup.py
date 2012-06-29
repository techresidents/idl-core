#!/usr/bin/env python

from distutils.core import setup

setup(name='tridlcore',
      version='${project.version}',
      description='Tech Residents IDL Core',
      packages=['tridlcore',
                'tridlcore.gen']
      )
