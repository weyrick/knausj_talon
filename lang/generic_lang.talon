code.language: csharp
code.language: python
-
<user.lang_keywords>: insert(lang_keywords)
state if: user.lang_state_if()
state ellie: user.lang_state_elif()
state else: user.lang_state_else()
state while: user.lang_state_while()
state switch: user.lang_state_switch()
state case: user.lang_state_case()
state for: user.lang_state_for()
commenter (this | line): user.lang_comment_begin_line()
commenter here: user.lang_comment_here()
new comment <phrase>:
    user.lang_comment_here()
    dictate.lower(phrase)
funk <phrase>: user.lang_private_function(phrase)