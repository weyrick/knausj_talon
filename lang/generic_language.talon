code.language: python
code.language: csharp
code.language: talon

#todo tags
#tag: ???
-
#todo should we have a keyword list? type list capture?
#state in: insert(" in ")

is not none: user.language_is_not_null() 
is none: user.language_is_null()
word (dickt | dictionary): user.language_type_dictionary()
state if: user.language_state_if()
state else if: user.language_state_else_if()
state else: user.language_state_else()
state self: user.language_self()

#todo: this is valid for many languages,
# but probably not all
self taught: 
	user.language_self()
    insert(".")
state while: user.language_state_while()
state for: user.language_state_for()
state switch: user.language_state_switch()
state case: user.language_state_case()
state goto: user.language_state_go_to()
state import: user.language_import()
from import: user.language_from_import()
state class: user.language_type_class()
state include: user.language_include()
state include system: user.language_include_system()
state include local: user.language_include_local()
state type deaf: user.language_type_definition()
state type deaf struct: user.language_typedef_struct()
state for in: user.language_for_each()
state (no | nil): user.language_null()

