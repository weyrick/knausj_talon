tag: user.go
-
tag(): user.code_operators
tag(): user.code_comment
tag(): user.code_generic
variadic: "..."
logical and: " && "
logical or: " || "
# Many of these add extra terrible spacing under the assumption that
# gofmt/goimports will erase it.
state comment: "// "
[line] comment <user.text>:
    key("cmd-right")
    insert(" // ")
    insert(user.formatted_text(text, "sentence"))

# "add comment <user.text> [over]:
#     key("cmd-right")
#     text_with_leading(" // ")
# ]
# "[state] context: insert("ctx")
state (funk | func | fun): "func "
function (Annette | init) [over]: "func init() {\n"
function <user.text> [over]:
    insert("func ")
    insert(user.formatted_text(text, "PRIVATE_CAMEL_CASE"))
    insert("(")
    sleep(100ms)

method <user.text> [over]:
    insert("meth ")
    insert(user.formatted_text(text, "PRIVATE_CAMEL_CASE"))
    sleep(100ms)

state var: "var "
variable [<user.text>] [over]:
    insert("var ")
    insert(user.formatted_text(text, "PRIVATE_CAMEL_CASE"))
    # insert(" ")
    sleep(100ms)

of type [<user.text>] [over]:
    insert(" ")
    insert(user.formatted_text(text, "PRIVATE_CAMEL_CASE"))

# "set <user.text> [over]:
#     insert(user.formatted_text(text, "PRIVATE_CAMEL_CASE"))
#     insert(" := ")
#     sleep(100ms)
# ]
state break: "break"
state (chan | channel): " chan "
state go: "go "
state if: "if "
if <user.text> [over]:
  insert("if ")
  insert(user.formatted_text(text, "PRIVATE_CAMEL_CASE"))
spawn <user.text> [over]:
  insert("go ")
  insert(user.formatted_text(text, "PRIVATE_CAMEL_CASE"))
state else if: " else if "
else if <user.text> [over]:
    insert(" else if ")
    insert(user.formatted_text(text, "PRIVATE_CAMEL_CASE"))

state else: " else "
else <user.text> [over]:
    insert(" else {")
    key("enter")
    insert(user.formatted_text(text, "PRIVATE_CAMEL_CASE"))

state while: "while "
while <user.text> [over]:
    insert("while ")
    insert(user.formatted_text(text, "PRIVATE_CAMEL_CASE"))

state for: "for "
for <user.text> [over]:
    insert("for ")
    insert(user.formatted_text(text, "PRIVATE_CAMEL_CASE"))

state for range: "forr "
range <user.text> [over]:
    insert("forr ")
    insert(user.formatted_text(text, "PRIVATE_CAMEL_CASE"))

state format: "fmt"
format <user.text> [over]:
    insert("fmt.")
    insert(user.formatted_text(text, "PUBLIC_CAMEL_CASE"))

state switch: "switch "
switch <user.text> [over]:
    insert("switch ")
    insert(user.formatted_text(text, "PRIVATE_CAMEL_CASE"))

state select: "select "
# "select <user.text>:insert("select "), insert(user.formatted_text(text, "PRIVATE_CAMEL_CASE")]
state (const | constant): " const "
constant <user.text> [over]:
    insert("const ")
    insert(user.formatted_text(text, "PUBLIC_CAMEL_CASE"))

state case: " case "
state default: " default:"
case <user.text> [over]:
    insert("case ")
    insert(user.formatted_text(text, "PRIVATE_CAMEL_CASE"))

state type: " type "
type <user.text> [over]:
    insert("type ")
    insert(user.formatted_text(text, "PUBLIC_CAMEL_CASE"))
state true: " true "
state false: " false "
state (start | struct | struck):
  insert(" struct {")
  key("enter")
(struct | struck) <user.text> [over]:
    insert(" struct {")
    key("enter")
    insert(user.formatted_text(text, "PUBLIC_CAMEL_CASE"))

[state] empty interface: " interface{} "
state interface:
  insert(" interface {")
  key("enter")
interface <user.text> [over]:
    insert(" interface {")
    key("enter")
    insert(user.formatted_text(text, "PUBLIC_CAMEL_CASE"))

state string: " string "
[state] (int | integer | ant): "int"
state slice: " []"
slice of: "[]"
[state] (no | nil): "nil"
state (int | integer | ant) 64: " int64 "
state tag:
  user.insert_between(" `", "`")
field tag <user.text> [over]:
    user.insert_between(" `", "`")
    sleep(100ms)
    insert(user.formatted_text(text, "snake"))
    insert(" ")
    sleep(100ms)

state return: " return "
return  <user.text> [over]:
    insert("return ")
    insert(user.formatted_text(text, "PRIVATE_CAMEL_CASE"))

map of string to string: " map[string]string "
map of <user.text> [over]:
    insert("map[")
    insert(user.formatted_text(text, "PRIVATE_CAMEL_CASE"))
    key("right")
    sleep(100ms)

receive: " <- "
make: "make("
loggers [<user.text>] [over]:
    insert("logrus.")
    insert(user.formatted_text(text, "PUBLIC_CAMEL_CASE"))

length <user.text> [over]:
    insert("len(")
    insert(user.formatted_text(text, "PRIVATE_CAMEL_CASE"))

append <user.text> [over]:
    insert("append(")
    insert(user.formatted_text(text, "PRIVATE_CAMEL_CASE"))

state (air | err): "err"
error: " err "
loop over [<user.text>] [over]:
    insert("forr ")
    insert(user.formatted_text(text, "PRIVATE_CAMEL_CASE"))

item <user.text> [over]:
  insert(", ")
  insert(user.formatted_text(text, "PRIVATE_CAMEL_CASE"))

value <user.text> [over]:
    insert(": ")
    insert(user.formatted_text(text, "PRIVATE_CAMEL_CASE"))

address of [<user.text>] [over]:
    insert("&")
    insert(user.formatted_text(text, "PRIVATE_CAMEL_CASE"))

pointer to [<user.text>] [over]:
    insert("*")
    insert(user.formatted_text(text, "PRIVATE_CAMEL_CASE"))

swipe [<user.text>] [over]:
    key("right")
    insert(", ")
    insert(user.formatted_text(text, "PRIVATE_CAMEL_CASE"))

action(user.code_operator_indirection): "*"
action(user.code_operator_address_of): "&"
action(user.code_operator_subscript):
    insert("[]")
    key(left)
action(user.code_operator_assignment): " = "
action(user.code_operator_walrus): " := "
action(user.code_operator_subtraction): " - "
action(user.code_operator_subtraction_assignment): " -= "
action(user.code_operator_addition): " + "
action(user.code_operator_addition_assignment): " += "
action(user.code_operator_multiplication): " * "
action(user.code_operator_multiplication_assignment): " *= "
#action(user.code_operator_exponent): " ** "
action(user.code_operator_division): " / "
action(user.code_operator_division_assignment): " /= "
action(user.code_operator_modulo): " % "
action(user.code_operator_modulo_assignment): " %= "
action(user.code_operator_equal): " == "
action(user.code_operator_not_equal): " != "
action(user.code_operator_greater_than): " > "
action(user.code_operator_greater_than_or_equal_to): " >= "
action(user.code_operator_less_than): " < "
action(user.code_operator_less_than_or_equal_to): " <= "
action(user.code_operator_and): " && "
action(user.code_operator_or): " || "
action(user.code_operator_bitwise_and): " & "
action(user.code_operator_bitwise_and_assignment): " &= "
action(user.code_operator_bitwise_or): " | "
action(user.code_operator_bitwise_or_assignment): " |= "
action(user.code_operator_bitwise_exclusive_or): " ^ "
action(user.code_operator_bitwise_exclusive_or_assignment): " ^= "
action(user.code_operator_bitwise_left_shift): " << "
action(user.code_operator_bitwise_left_shift_assignment): " <<= "
action(user.code_operator_bitwise_right_shift): " >> "
action(user.code_operator_bitwise_right_shift_assignment): " >>= "
action(user.code_block):
    insert("{}")
	key(left enter enter up tab)
action(user.code_null): "nil"
action(user.code_is_null): " == nil "
action(user.code_is_not_null): " != nil"
action(user.code_state_if):
    insert("if()")
    key(left)
action(user.code_state_else_if):
    insert("else if()")
    key(left)
action(user.code_state_else):
    insert("else\n{{\n}}\n")
    key(up )
action(user.code_state_switch):
    insert("switch()")
    edit.left()
action(user.code_state_case):
    insert("case \nbreak;")
    edit.up()
action(user.code_state_for): "for "
action(user.code_state_for_each):
    insert("foreach() ")
    key(left)
    edit.word_left()
    key(space)
    edit.left()
action(user.code_state_while):
    insert("while()")
    edit.left()
action(user.code_state_return): "return "
action(user.code_break): "break"
action(user.code_next): "continue"
action(user.code_true): "true"
action(user.code_false): "false"

action(user.code_comment): "//"
