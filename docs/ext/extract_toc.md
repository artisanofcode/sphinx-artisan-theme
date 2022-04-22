# extract_toc


```{currentmodule} sphinx_artisan_theme.ext.extract_toc
```

```{rst-class} lead
Hand-styled tables of content for sphinx themes.
```

```{attention}
This extension is enabled automatically when using the `artisan` theme.
```

## Usage

### Custom themes

You can enable this extension by adding the following to your `conf.py` file.

```py
extensions = [
  "sphinx_artisan_theme.ext.extract_toc",
  ...
]
```

## Jinja2 helpers


### get_navigation()

```{py:function} get_navigation(*, prune, maxdepth, titles_only, includehidden)

Extracts the in-page table of contents similar to the sphinx `{{toctree()}}` helper but
returns a list of {class}`NavigationSection` instances.

:param bool prune : prune the tree to *maxdeepth*
:param int maxdepth : maximum depth to recurse the table
:param bool titles_only: only use top level document titles 
:param bool includehidden: include hidden toctrees

:return: A list of navigation sections
:rtype: list[NavigationSection]
```

#### Example

```html+jinja
{% macro navigation(item) %}
<li>
    <a 
      href="{{ item.url }}"
      {% if item.is_active %}class="active"{% endif %}
    >
      {{ item.title }}
    </a>
    {% if item.children %}
    <ul>
      {% for child in item.children %}
        {{ navigation(item) }}
      {% endfor %}
    </ul>
    {% endif %}
</li>
{% endmacro %}

{% for section in get_navigation(
    collapse=True,
    maxdepth=3,
    titles_only=True,
    includehidden=False
) %}
  {% if section.title %}
    <h2>{{ section.title }}
  {% endif %}
  <ul>
    {% for item in section.children %}
      {{ navigation(item) }}
    {% endfor %}
  </ul>
{% endfor %}
```

---

### get_table_of_contents()

```{py:function} get_table_of_contents()

Extracts the in-page table of contents similar to the sphinx `{{toc}}` helper but 
returns an iterable of {class}`~NavigationItem` instances.

:return: A list of navigation items
:rtype: list[NavigationItem]
```

#### Example

```html+jinja
{% macro navigation(item) %}
<li>
  <a 
    href="{{ item.url }}"
    {% if item.is_active %}class="active"{% endif %}
  >
    {{ item.title }}
  </a>
  {% if item.children %}
    <ul>
      {% for child in item.children %}
        {{ navigation(item) }}
      {% endfor %}
    </ul>
  {% endif %}
</li>
{% endmacro %}

<ul>
  {% for item in get_table_of_contents() %}
    {{ navigation(item) }}
  {% endfor %}
</ul>
```

## Reference

```{eval-rst}
.. automodule:: sphinx_artisan_theme.ext.extract_toc
   :synopsis: provides jinja2 helpers for customisable tables of contents.
   :members:
```