# Code

## Styles

### Basic

```html
<!doctype html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">
    <title>Greeting</title>
  </head>

  <body >
    Hello World!
  </body>
</html>
```

~~~md
```html
<!doctype html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">
    <title>Greeting</title>
  </head>

  <body >
    Hello World!
  </body>
</html>
```
~~~

### Code Block

```{code-block}
---
linenos: true
lineno-start: 20
emphasize-lines: 2,3
dedent: 4
---
    def greet(target: str = "World"):
        if not target:
            raise ValueError("target")

        print(f"Hello {target}")
```

~~~md
```{code-block}
---
lineno-start: 20
emphasize-lines: 2,3
dedent: 4
---
    def greet(target: str = "World"):
        if not target:
            raise ValueError("target")

        print(f"Hello {target}")
```
~~~

### Literal include

```{literalinclude} ./examples/fizzbuzz.py
---
language: python
emphasize-lines: 11-22
---
```

~~~md
```{literalinclude} ./examples/fizzbuzz.py
---
language: python
emphasize-lines: 11-22
---
```
~~~