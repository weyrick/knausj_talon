code.language: talon
-
action(user.language_operator_and): " and "
action(user.language_operator_or): " or "
action(user.language_operator_subtraction): " - "
action(user.language_operator_addition): " + "
action(user.language_operator_multiplication): " * "
action(user.language_operator_division): " / "
action(user.language_operator_assignment): " = "
action(user.language_comment): "#"

insert: 
	insert('insert("")')
	edit.left()
	edit.left()

key:
	insert('key()')
	edit.left()

action:
	insert("action()")
	edit.left()

os win:
	insert("os: windows")
	
os mac:
	insert("os: mac")
	
os lunix:
	insert("os: linux")
	
app:
	insert("app: ")
	
tags:
	insert("tags: ")

user:
	insert("user.")

