# Install dependencies
install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

# Run linting
lint:
	pylint --disable=R,C hello.py

# Run tests
test:
	python -m pytest -vv --cov=hello test_hello.py

# Format code
format:
	black hello.py test_hello.py
