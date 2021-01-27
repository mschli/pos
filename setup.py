from setuptools import setup, find_packages

setup(name='python_optimization_server',
      version='0.0.1',
      description='Server for solving optimization problems',
      author='mschli',
      packages=find_packages(),
      python_requires='>=3.6',
      install_requires=['casadi', 'numpy', 'jsonpickle', 'flask'],
      test_suite="tests")
