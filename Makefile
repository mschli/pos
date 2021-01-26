VENV = venv/bin/
PYTHON = python3
CHECKSTYLE = flake8
PYTHON_FILES = $(shell find ./src -name "*.py")

all: compile test checkstyle

compile: venv
	$(VENV)$(PYTHON) -m py_compile $(PYTHON_FILES)

test: venv
	$(VENV)$(PYTHON) setup.py test

checkstyle: venv
	$(VENV)$(CHECKSTYLE) $(PYTHON_FILES)

clean:
	find . -name "*.pyc" | xargs rm -f
	find . -name "__pycache__" | xargs rm -rf
	find . -name "*.egg-info" | xargs rm -rf
	find . -name "venv" | xargs rm -rf

venv: setup.py
	$(PYTHON) -m venv venv
	$(VENV)pip install flake8