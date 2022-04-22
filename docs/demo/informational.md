# Informational

## Admonitions

Admonitions are specially marked "topics" that can appear anywhere an ordinary body 
element can. They contain arbitrary body elements. Typically, an admonition is rendered
as an offset block in a document, sometimes outlined or shaded, with a title matching 
the admonition type.

### hint

```{hint}
This is how a hint admonition appears.
```

~~~markdown
```{hint}
This is how a hint admonition appears.
```
~~~

### note

```{note}
This is how an attention admonition appears.
```

~~~markdown
```{note}
This is how a note admonition appears.
```
~~~

### important

```{important}
This is how an important admonition appears.
```

~~~markdown
```{important}
This is how an important admonition appears.
```
~~~

### tip

```{tip}
This is how an tip admonition appears.
```

~~~markdown
```{tip}
This is how an tip admonition appears.
```
~~~

### attention

```{attention}
This is how an attention admonition appears.
```

~~~markdown
```{attention}
This is how an attention admonition appears.
```
~~~

### caution

```{caution}
This is how a caution admonition appears.
```

~~~markdown
```{caution}
This is how a caution admonition appears.
```
~~~

### warning

```{warning}
This is how a warning admonition appears.
```

~~~markdown
```{warning}
This is how a warning admonition appears.
```
~~~

### danger

```{danger}
This is how a danger admonition appears.
```

~~~markdown
```{danger}
This is how a danger admonition appears.
```
~~~

### error

```{error}
This is how an error admonition appears.
```

~~~markdown
```{error}
This is how an error admonition appears.
```
~~~

### seealso

Many sections include a list of references to module documentation or external documents. These lists are created using the seealso directive.

The seealso directive is typically placed in a section just before any subsections. For the HTML output, it is shown boxed off from the main flow of the text.

The content of the seealso directive should be a  definition list.

```{seealso}
Module {py:mod}`zipfile`
: Documentation of the {py:mod}`zipfile` standard module.

[GNU tar manual, Basic Tar Format](<http://link>)
: Documentation for tar archive files, including GNU tar e tensions.
```

~~~markdown
```{seealso}

Module {py:mod}`zipfile`
: Documentation of the {py:mod}`zipfile` standard module.

[GNU tar manual, Basic Tar Format](<http://link>)
: Documentation for tar archive files, including GNU tar e tensions.
```
~~~


### admonition

```{admonition} Custom
This is how a generic admonition appears.

- The note contains all indented body elements
   following.
- It includes this bullet list.
```

~~~markdown
```{admonition} Custom
This is how a generic admonition appears.

- The note contains all indented body elements
   following.
- It includes this bullet list.
```
~~~

## Topics

A topic is like a block quote with a title, or a self-contained section with no subsections. Use the "topic" directive to indicate a self-contained idea that is separate from the flow of the document. Topics may occur anywhere a section or transition may occur. Body elements and topics may not contain nested topics.

### topic

```{topic} Topic Title
This is how a topic appears.
```

~~~markdown
```{topic} Topic Title
This is how a topic appears.
```
~~~

## Lifecycle

Lifecycle directives highlight changes related to methods.

### versionadded

```{versionadded} 2.5
The *spam* parameter.
```

~~~md
```{versionadded} 2.5
The *spam* parameter.
```
~~~

### versionchanged

```{versionchanged} 2.6
The *spam* parameter now accepts strings.
```

~~~md
```{versionchanged} 2.6
The *spam* parameter now accepts strings.
```
~~~

### deprecated

```{deprecated} 2.7
The *spam* parameter will be removed in a future version.
```

~~~md
```{deprecated} 2.7
The *spam* parameter will be removed in a future version.
```
~~~