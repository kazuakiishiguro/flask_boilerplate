from setuptools import setup, find_packages

with open('README.rst') as readme_file:
    readme = readme_file.read()

# requirements file
with open('requirements.txt') as f:
    requirements = f.read().splitlines()

# version
version = '1.0.0'

setup(
    name='flask_boilerplate',
    packages=find_packages("."),
    description='python flask boilerplate',
    long_description=readme,
    version=version,
    install_requires=requirements
)