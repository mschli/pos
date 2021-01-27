VENV = venv/bin/
PYTHON = python3
CHECKSTYLE = flake8
TEST = pytest
PYTHON_FILES = $(shell find ./src -name "*.py")

all: compile test checkstyle coverage

compile: venv
	$(VENV)$(PYTHON) -m py_compile $(PYTHON_FILES)

test: compile
	$(VENV)$(TEST)

checkstyle: venv
	$(VENV)$(CHECKSTYLE) $(PYTHON_FILES)

coverage: venv
	$(VENV)$(TEST) --cov=./ --cov-report=xml

clean:
	find . -name "*.pyc" | xargs rm -f
	find . -name "__pycache__" | xargs rm -rf
	find . -name "*.egg-info" | xargs rm -rf
	find . -name "venv" | xargs rm -rf
	find . -name ".coverage" | xargs rm -rf
	find . -name "coverage.xml" | xargs rm -rf

venv: setup.py
	$(PYTHON) -m venv venv
	$(VENV)$(PYTHON) -m pip install --upgrade pip setuptools wheel pytest pytest-cov
	$(VENV)pip install flake8
	$(VENV)pip install .[test]