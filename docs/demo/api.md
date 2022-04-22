# API documentation

## Examples

### Manual function

```{py:function} send_message(sender, priority)

Send a message to a recipient

:param str sender: The person sending the message
:param priority: The priority of the message, can be a number 1-5
:type priority: int
:return: the message id
:rtype: int
:raises ValueError: if the message_body exceeds 160 characters
```

### sphinx_artisan_theme module

```{eval-rst}
.. automodule:: sphinx_artisan_theme
    :members:
    :autosummary:
```
