import os

from setuptools import setup, find_packages

here = os.path.abspath(os.path.dirname(__file__))
README = open(os.path.join(here, 'README')).read()

requires = [
    'pyramid',
    'SQLAlchemy',
    'transaction',
    'pyramid_tm',
    'pyramid_debugtoolbar',
    'zope.sqlalchemy',
    'waitress',
    #### LEGACY (zkpylon) requirements:
    "pylons",
    "AuthKit>=0.4.0",
    # FormEncode used to do form input validation
    "FormEncode>=0.6",
    # DNS for email address validation
    "dnspython",
    "pylibravatar",
    "vobject",
    "pytz",
    "lxml",
    ]

setup(name='zk',
      version='2.0',
      description='zk',
      long_description=README + '\n\n',
      classifiers=[],
      author='',
      author_email='',
      url='',
      keywords='',
      packages=find_packages(),
      include_package_data=True,
      zip_safe=False,
      test_suite='zk',
      install_requires=requires,
      entry_points="""\
      [paste.app_factory]
      main = zk:main
      [console_scripts]
      initialise_zk_db = zk.scripts.initialisedb:main
      """,
      )

