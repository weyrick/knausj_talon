code.language: python
code.language: csharp
code.language: talon
#todo tags
#tag: ???
-
comment: user.language_comment()
comment line: 
    #todo: this should probably be a single function once
    #.talon supports implementing actions with parameters?
	edit.line_start()
    user.language_comment()
#adds comment to the start of the line
comment line <phrase> over: 
    #todo: this should probably be a single function once
    #.talon supports implementing actions with parameters?
    edit.line_start()
    user.language_comment()
	dictate.lower(phrase)
    insert(" ")
comment line <phrase> over: 
    #todo: this should probably be a single function once
    #.talon supports implementing actions with parameters?
    edit.line_start()
    user.language_comment()
    dictate.lower(phrase)
    insert(" ")
comment <phrase> over: 
    #todo: this should probably be a single function once
    #.talon supports implementing actions with parameters?
	user.language_comment()
    dictate.lower(phrase)
^comment <phrase>$: 
    #todo: this should probably be a single function once
    #.talon supports implementing actions with parameters?
    user.language_comment()
    dictate.lower(phrase)
(line | inline) comment <phrase> over:
    #todo: this should probably be a single function once
    #.talon supports implementing actions with parameters?
	edit.line_end()
   	user.language_comment()
    dictate.lower(phrase)
^(line | inline) comment <phrase>$:
    #todo: this should probably be a single function once
    #.talon supports implementing actions with parameters?
	edit.line_end()
   	user.language_comment()
    dictate.lower(phrase)