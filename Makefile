install:
	python -m pip install  --upgrade pip setuptools
	python -m pip install --upgrade -r requirements.txt

pre-commit-install:
	pre-commit install

docs-validate:
	mkdocs build -c -s
	rm -rf site

docs-serve:
	mkdocs serve

docs-build:
	mkdocs gh-deploy