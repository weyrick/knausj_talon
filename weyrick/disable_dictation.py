"""Disable Talon's text dictation features.

We use Wispr Flow for dictation, so we:
- Empty the prose_formatter list (disables "say", "sentence", "title")
- Remove "list" from code_formatter (too easily triggered by normal speech)
"""
from talon import Context

ctx = Context()

# Override prose_formatter to empty - disables "say", "speak", "sentence", "title"
ctx.lists["user.prose_formatter"] = {}

# Override code_formatter without "list" to prevent accidental comma-separated insertion
ctx.lists["user.code_formatter"] = {
    "all cap": "ALL_CAPS",
    "all down": "ALL_LOWERCASE",
    "camel": "PRIVATE_CAMEL_CASE",
    "dotted": "DOT_SEPARATED",
    # "list": "COMMA_SEPARATED",  # removed - triggers on normal speech
    "dub string": "DOUBLE_QUOTED_STRING",
    "dunder": "DOUBLE_UNDERSCORE",
    "hammer": "PUBLIC_CAMEL_CASE",
    "kebab": "DASH_SEPARATED",
    "packed": "DOUBLE_COLON_SEPARATED",
    "padded": "SPACE_SURROUNDED_STRING",
    "slasher": "ALL_SLASHES",
    "conga": "SLASH_SEPARATED",
    "smash": "NO_SPACES",
    "snake": "SNAKE_CASE",
    "string": "SINGLE_QUOTED_STRING",
    "constant": "ALL_CAPS,SNAKE_CASE",
}
