# Update the code and upload the package to pypi
# 1. python ./setup.py bdist_wheel --universal
# 2. twine upload dist/xxx.whl

from setuptools import setup, find_packages

setup(
    name="openmldb_notebooks",
    version="0.1.0",
    author="tobe",
    author_email="tobeg3oogle@gmail.com",
    url="https://github.com/tobegit3hub/openmldb_notebooks",
    description="OpenMLDB Notebooks",
    packages=find_packages(),
    classifiers=[
    ],
    install_requires=[
        'openmldb>=0.4.1'
    ],
    include_package_data=True,
    zip_safe=False,
    entry_points={}
)
