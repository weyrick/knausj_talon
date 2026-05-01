"""Disable Talon's text/keyboard-output features.

We use Wispr Flow for all text input. This disables commands that
emit text or keystrokes from short common words, and neutralizes the
<user.text> capture so any "<keyword> <user.text>" command is dead.
"""
from talon import Context, Module

mod = Module()
ctx = Context()

# --- Lists ---

# Disable prose formatters ("say", "speak", "sentence", "title")
ctx.lists["user.prose_formatter"] = {}

# Keep code formatters but drop "list" which triggers on normal speech
ctx.lists["user.code_formatter"] = {
    "all cap": "ALL_CAPS",
    "all down": "ALL_LOWERCASE",
    "camel": "PRIVATE_CAMEL_CASE",
    "dotted": "DOT_SEPARATED",
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

# Disable the alphabet so saying "air", "bat", "cap", etc. doesn't type letters
ctx.lists["user.letter"] = {}

# --- Captures ---

# Override user.text so commands like "phrase <user.text>", "jump <user.text>",
# "snip ... <user.text>", "macro save as <user.text>", etc. never match.
# The rule requires the literal token "talondisabledtext" which is extremely
# unlikely to ever be spoken.
@ctx.capture("user.text", rule="talondisabledtext")
def text(m) -> str:
    return ""

# Same for raw_prose (used in dictation_mode, less critical but for safety)
@ctx.capture("user.prose", rule="talondisabledprose")
def prose(m) -> str:
    return ""
