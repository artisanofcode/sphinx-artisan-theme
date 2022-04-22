.DEFAULT_GOAL = help

THEME_DIR = src/sphinx_artisan_theme/themes/artisan

bootstrap:
	yarn install
	poetry install

#: build the projects output files
build: update
	npx tailwindcss \
		-c ${THEME_DIR}/tailwind.config.js \
		-i ${THEME_DIR}/static/theme.src.css \
		-o ${THEME_DIR}/static/theme.css --minify
	poetry build

#: run continuous integration tasks
ci:
	poetry run pylint sphinx_artisan_theme tests
	poetry run mypy src tests
	poetry run pytest tests
	poetry run sphinx-build -M linkcheck src dist

clean:
	rm -rf dist

#: open a repl console
console:
	poetry run python

docs: update
	poetry run sphinx-build -b dirhtml -a -n docs dist/docs

#: format all source files
format:
	poetry run shed

#: list avalible make targets
help:
	@grep -B1 -E "^[a-zA-Z0-9_-]+\:([^\=]|$$)" Makefile \
		| grep -v -- -- \
		| sed 'N;s/\n/###/' \
		| sed -n 's/^#: \(.*\)###\(.*\):.*/make \2###    \1/p' \
		| column -t  -s '###' \
		| sort

#: run project server locally
server: update
	poetry run sphinx-autobuild -b dirhtml docs dist/docs --host 0.0.0.0 --watch ./src

#: setup the project after a `git clone`
setup: bootstrap

#: run the projects test suite
test:
	poetry run pylint sphinx_artisan_theme tests
	poetry run mypy src tests
	poetry run pytest tests

#: update the project after a `git pull`
update: bootstrap

.PHONY: bootstrap build ci clean console format help server setup test update
