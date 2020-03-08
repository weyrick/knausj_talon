code.language: python
-
action(user.lang_state_if):
	insert("if :")
	edit.left()

action(user.lang_state_elif):
	insert("elif")
	#edit.left()
	#edit.left()

action(user.lang_state_else):
	insert("else\n")
	key(enter)

action(user.lang_state_switch):
	insert("switch ()") 
	edit.left()

action(user.lang_state_case):
	insert("case \nbreak;") 
	edit.up()

action(user.lang_state_for):
	insert("for ")

action(user.lang_state_while):
	insert("while()")
	edit.left()

action(user.lang_try_catch):
	edit.cut()
	sleep(50ms)
	insert("try:\n")
	insert("\nexcept:\n")
	edit.up()
	key(tab)

action(user.lang_comment_here):
    insert("#")

action(user.lang_comment_begin_line):
    edit.line_start()
    insert("#")

dunder in it: insert("__init__")

self taught: 
	insert("self.")

from import: 
	insert("from import ")
	key(left)
	edit.word_left()
	key(space) 
	edit.left()
	
for in: 
	insert("for in ")
	key(left)
	edit.word_left()
	key(space) 
	edit.left()
	
