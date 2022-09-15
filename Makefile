install:
	python -m pip install  --upgrade pip setuptools
	python -m pip install --upgrade -r requirements.txt

pre-commit-install: 
	pre-commit install

mdformat:
	pre-commit run mdformat --all-files

docs-validate:
	mkdocs build -c -s
	rm -rf site

docs-serve:
	mkdocs serve

docs-build:
	mkdocs gh-deploy