# Inline markup

## Markup

### Basic

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
incididunt ut **bold** labore et *italic* dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud ~~strikethrough~~ exercitation ullamco laboris nisi ut `code` aliquip ex
ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse 
cillum dolore eu fugiat nulla pariatur.

~~~md
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
incididunt ut **bold** labore et *italic* dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud ~~strikethrough~~ exercitation ullamco laboris nisi ut `code` aliquip ex
ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse 
cillum dolore eu fugiat nulla pariatur.
~~~

### Links

(target)=

Links can be explicit [link](http://google.com/), defined later [link][google], or raw
urls <http://google.com/>.

Sphinx specific links such as referencing a target {ref}`my target  <target>` or class
{py:class}`~sphinx_artisan_theme.ext.extract_toc.NavigationItem` are als supported.

[google]: http://google.com/


~~~md
(target)=

Links can be explicit [link](http://google.com/), defined later [link][google], or raw
urls <http://google.com/>.

Sphinx specific links such as referencing a target {ref}`my target  <target>` or class
{py:class}`~sphinx_artisan_theme.ext.extract_toc.NavigationItem` are als supported.

[google]: http://google.com/
~~~