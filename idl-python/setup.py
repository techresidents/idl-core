#!/usr/bin/env python

from distutils.core import setup

setup(name='techresidents services idl core',
      version='${project.version}',
      description='30and30 Service',
      packages=['techresidents',
                'techresidents.services',
                'techresidents.services.core',
                'techresidents.services.core.idl',
                'techresidents.services.core.idl.gen']
      )
