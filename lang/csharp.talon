code.language: csharp
-
action(user.lang_state_if):
	insert("if()\n{{\n\n}}")
	edit.up()
    edit.up()
    edit.up()
    edit.right()
    edit.right()

action(user.lang_state_elif):
	insert("else if()\n{{\n\n}}")
	edit.up()
    edit.up()
    edit.up()
    edit.right()
    edit.right()
    edit.right()
    edit.right()
    edit.right()
    edit.right()
    edit.right()

action(user.lang_state_else):
    insert("else\n{{\n\n}}")
	edit.up()

action(user.lang_state_switch):
    insert("switch()\n{{\n\n}}")
    edit.up()
    edit.up()
    edit.up()
    edit.right()
    edit.right()
    edit.right()
    edit.right()
    edit.right()
    edit.right()

action(user.lang_state_case):
    insert("case():\n{{\n\n}}\nbreak;")
    edit.up()
    edit.up()
    edit.up()
    edit.up()
    edit.left()
    edit.left()

action(user.lang_state_for):
	insert("for()\n{{\n\n}} ")
    edit.up()
    edit.up()
    edit.up()
    
action(user.lang_state_while):
	insert("while()\n{{\n\n}}")
	edit.up()
    edit.up()
    edit.up()
    edit.right()
    edit.right()
    edit.right()
    edit.right()
    edit.right()

action(user.lang_comment_here):
    insert("//")

action(user.lang_comment_begin_line):
    edit.line_start()
    insert("//")

action(user.lang_try_catch):
	edit.cut()
	sleep(50ms)
	insert("try:\n")
	insert("\nexcept:\n")
	edit.up()
	edit.up()
