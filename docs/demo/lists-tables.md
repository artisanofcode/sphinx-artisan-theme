# Lists and tables

## Lists

### Enumerated Lists

1. List item
   
   1. List item
      
      1. List item

      1. List item

      1. List item

2. Lists that don’t start at 1

   4. List item
   5. List item

```md
1. List item
   
   1. List item
      
      1. List item

      1. List item

      1. List item

2. Lists that don’t start at 1

   4. List item
   5. List item
```

### Definition Lists

Term 1
: Definition

Term 2
: Definition paragraph 1.

  Definition paragraph 2.

Term 3
: Definition

```md
Term 1
: Definition

Term 2
: Definition paragraph 1.

  Definition paragraph 2.

Term 3
: Definition
```

### Task Lists

- [ ] A list item
- [x] A list item

```md
- [ ] A list item
- [x] A list item
```

### Option Lists


### Field list

:Author: David Goodger
:Address: 123 Example Street
          Example, EX  Canada
          A1B 2C3
:Contact: docutils-develop@lists.sourceforge.net
:Authors: Me; Myself; I
:organization: humankind
:date: $Date: 2012-01-03 19:23:53 +0000 (Tue, 03 Jan 2012) $
:status: This is a "work in progress"
:revision: $Revision: 7302 $
:version: 1
:copyright: This document has been placed in the public domain. You
            may do with it as you wish. You may copy, modify,
            redistribute, reattribute, sell, buy, rent, lease,
            destroy, or improve it, quote it at length, excerpt,
            incorporate, collate, fold, staple, or mutilate it, or do
            anything else to it that your or anyone else's heart
            desires.
:field name: This is a generic bibliographic field.
:field name 2:
    Generic bibliographic fields may contain multiple body elements.

    Like this.

:Dedication:

    For Docutils users & co-developers.

:abstract:

    This document is a demonstration of the reStructuredText markup
    language, containing examples of all basic reStructuredText
    constructs and many advanced constructs.



```md
:Author: David Goodger
:Address: 123 Example Street
          Example, EX  Canada
          A1B 2C3
:Contact: docutils-develop@lists.sourceforge.net
:Authors: Me; Myself; I
:organization: humankind
:date: $Date: 2012-01-03 19:23:53 +0000 (Tue, 03 Jan 2012) $
:status: This is a "work in progress"
:revision: $Revision: 7302 $
:version: 1
:copyright: This document has been placed in the public domain. You
            may do with it as you wish. You may copy, modify,
            redistribute, reattribute, sell, buy, rent, lease,
            destroy, or improve it, quote it at length, excerpt,
            incorporate, collate, fold, staple, or mutilate it, or do
            anything else to it that your or anyone else's heart
            desires.
:field name: This is a generic bibliographic field.
:field name 2:
    Generic bibliographic fields may contain multiple body elements.

    Like this.

:Dedication:

    For Docutils users & co-developers.

:abstract:

    This document is a demonstration of the reStructuredText markup
    language, containing examples of all basic reStructuredText
    constructs and many advanced constructs.

```

### Bullet Lists


* List item
   
  * List item
      
    * List item

      * List item

        * List item

* List item

  * List item
  * List item

```md



* List item
   
  * List item
      
    * List item

      * List item

        * List item

* List item

  * List item
  * List item
```

### Production list

```{eval-rst}
.. productionlist::
   try_stmt: try1_stmt | try2_stmt
   try1_stmt: "try" ":" `suite`
            : ("except" [`expression` ["," `target`]] ":" `suite`)+
            : ["else" ":" `suite`]
            : ["finally" ":" `suite`]
   try2_stmt: "try" ":" `suite`
            : "finally" ":" `suite`

```

~~~md
```{eval-rst}
.. productionlist::
   try_stmt: try1_stmt | try2_stmt
   try1_stmt: "try" ":" `suite`
            : ("except" [`expression` ["," `target`]] ":" `suite`)+
            : ["else" ":" `suite`]
            : ["finally" ":" `suite`]
   try2_stmt: "try" ":" `suite`
            : "finally" ":" `suite`

```
~~~

### Glossary

```{glossary}
Foo
    Comes before a bar

Bar
    Comes after a foo

Baz
    Like a bar but different
```

~~~md

```{glossary}
Foo
    Comes before a bar

Bar
    Comes after a foo

Baz
    Like a bar but different
```
~~~

## Tables

### Grid Tables

|       | Header 1 | Header 2 | Header 3 | Header 4 |
|-------|----------|:---------|:--------:|---------:|
| Row 1 | Column 1 | Column 2 | Column 3 | Column 4 |
| Row 1 | Column 1 | Column 2 | Column 3 | Column 4 |
| Row 1 | Column 1 | Column 2 | Column 3 | column 4 |
| Row 1 | Column 1 | Column 2 | Column 3 | Column 4 |

```md
|       | Header 1 | Header 2 | Header 3 | Header 4 |
|-------|----------|:---------|:--------:|---------:|
| Row 1 | Column 1 | Column 2 | Column 3 | Column 4 |
| Row 1 | Column 1 | Column 2 | Column 3 | Column 4 |
| Row 1 | Column 1 | Column 2 | Column 3 | column 4 |
| Row 1 | Column 1 | Column 2 | Column 3 | Column 4 |
```

### List Tables

```{list-table} List tables can have captions like this one.
---
widths: 10 10 10 10 10
header-rows: 1
stub-columns: 1
---
* - 
  - Header 1
  - Header 2
  - Header 3
  - Header 4
* - Row 1
  - Column 1
  - Column 2
  - Column 3
  - Column 4
* - Row 2
  - Column 1
  - Column 2
  - Column 3
  - Column 4
* - Row 3
  - Column 1
  - Column 2
  - Column 3
  - Column 4
```

~~~md
```{list-table} List tables can have captions like this one.
---
widths: 10 10 10 10 10
header-rows: 1
stub-columns: 1
---
* - 
  - Header 1
  - Header 2
  - Header 3
  - Header 4
* - Row 1
  - Column 1
  - Column 2
  - Column 3
  - Column 4
* - Row 2
  - Column 1
  - Column 2
  - Column 3
  - Column 4
* - Row 3
  - Column 1
  - Column 2
  - Column 3
  - Column 4
```
~~~


### CSV Tables

```{csv-table} CSV tables can have captions like this one.
---
widths: 10 10 10 10 10
header-rows: 1
stub-columns: 1
---
,Header 1,Header 2,Header 3,Header 4
Row 1,Column 1,Column 2,Column 3,Column 4
Row 2,Column 1,Column 2,Column 3,Column 4
Row 3,Column 1,Column 2,Column 3,Column 4
```

~~~md
```{csv-table} CSV tables can have captions like this one.
---
widths: 10 10 10 10 10
header-rows: 1
stub-columns: 1
---
,Header 1,Header 2,Header 3,Header 4
Row 1,Column 1,Column 2,Column 3,Column 4
Row 2,Column 1,Column 2,Column 3,Column 4
Row 3,Column 1,Column 2,Column 3,Column 4
```
~~~