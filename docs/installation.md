# Installation

```{rst-class} lead
Naught to beautiful in the blink of an eye.
```

## Install

### Using poetry

[Poetry](https://python-poetry.org) is a tool for dependency management and packaging
in Python. It allows you to declare the libraries your project depends on and it will
manage (install/update) them for you.

You can add the theme to your projects development dependencies with the following cli
command.


```sh
poetry add --group dev sphinx-artisan-theme
```

### Using pip

[pip](https://pip.pypa.io) is pythons legacy package installer. It allows you to 
install packages libraries your project depends on directly into either the global or a
virtual environment.

You can install the theme using the following cli command.


```sh
pip install sphinx-artisan-theme
```


## Setup 

### Updating conf.py

The theme has been packaged as a sphinx extension, which must be enabled first
before you can use the theme, this is done by adding `"sphinx_artisan_theme"` 
to the `extensions` list in `conf.py`.

Once the extension is enabled you can update the `html_theme` setting to equal
`"artisan"` and sphinx should start using the theme to render HTML for your
documentation.

```py
# conf.py

extensions = ["sphinx_artisan_theme"]

html_theme = "artisan"
```