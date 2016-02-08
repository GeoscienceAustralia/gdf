#!/usr/bin/env python

from distutils.core import setup

version = '0.0.0'

setup(name='agdc-v2',
      version=version,
      packages=[
#          'analytics',
#          'analytics_utils',
#          'execution_engine',
          'gdf'
      ],
      package_data={
          'gdf': ['gdf_default.conf']
      },
      scripts=[
      ],
      requires=[
          'cython',
          'psycopg2',
          'gdal',
          'numexpr',
          'numpy',
          'h5py',
          'netcdf4',
          'scipy',
          'pytz',
#          'matplotlib',
#          'xray',
#          'dask',
          'SharedArray'
      ],
      url='https://github.com/GeoscienceAustralia/gdf',
      author='Alex Ip - Geoscience Australia',
      maintainer='Alex Ip - Geoscience Australia',
      maintainer_email='alex.ip@ga.gov.au',
      description='Generalised Data Framework',
      long_description='Generalised Data Framework',
      license='Apache License 2.0'
      )
