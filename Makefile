# # Install dependencies
# install:
# 	pip install --upgrade pip &&\
# 		pip install -r requirements.txt

# # Run linting
# lint:
# 	pylint --disable=R,C hello.py

# # Run tests
# test:
# 	python -m pytest -vv --cov=hello test_hello.py

# # Format code
# format:
# 	black hello.py test_hello.py


# Virtual environment and paths
VENV_DIR = .venv
PYTHON = $(VENV_DIR)/Scripts/python.exe  # Correct path for Windows
PIP = $(VENV_DIR)/Scripts/pip.exe       # Correct path for Windows

# Create and activate virtual environment
venv:
	python -m venv $(VENV_DIR)
	$(PYTHON) -m pip install --upgrade pip
	$(PIP) install -r requirements.txt

# Install dependencies
install: venv

# Lint code
lint:
	$(PYTHON) -m pylint --disable=R,C hello.py

# Run tests
test:
	$(PYTHON) -m pytest -vv --cov=hello test_hello.py

# Format code
format:
	$(PYTHON) -m black hello.py test_hello.py
