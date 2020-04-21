code.language: csharp
-
settings():
    user.language_private_function_formatter = "PRIVATE_CAMEL_CASE"
    user.language_protected_function_formatter = "PROTECTED_CAMEL_CASE"
    user.language_public_function_formatter = "PROTECTED_CAMEL_CASE"
    user.language_private_variable_formatter = "PRIVATE_CAMEL_CASE"
    user.language_protected_variable_formatter = "PROTECTED_CAMEL_CASE"
    user.language_public_variable_formatter = "PROTECTED_CAMEL_CASE"

action(user.language_operator_indirection): "*"
action(user.language_operator_address_of): "&"
action(user.language_operator_structure_deference): "->"
action(user.language_operator_lambda): "=>"
action(user.language_operator_subscript): 		
	insert("[]")
	key(left)
action(user.language_operator_assignment): " = "
action(user.language_operator_subtraction): " - "
action(user.language_operator_subtraction_assignment): " -= "
action(user.language_operator_addition): " + "
action(user.language_operator_addition_assignment): " += "
action(user.language_operator_multiplication): " * "
action(user.language_operator_multiplication_assignment): " *= "
#action(user.language_operator_exponent): " ** "
action(user.language_operator_division): " / "
action(user.language_operator_division_assignment): " /= "
action(user.language_operator_modulo): " % "
action(user.language_operator_modulo_assignment): " %= "
action(user.language_operator_equal): " == "
action(user.language_operator_not_equal): " != "
action(user.language_operator_greater_than): " > "
action(user.language_operator_greater_than_or_equal_to): " >= "
action(user.language_operator_less_than): " < "
action(user.language_operator_less_than_or_equal_to): " <= "
action(user.language_operator_and): " && "
action(user.language_operator_or): " || "
action(user.language_operator_bitwise_and): " & "
action(user.language_operator_bitwise_and_assignment): " &= " 
action(user.language_operator_bitwise_or): " | "
action(user.language_operator_bitwise_or_assignment): " |= "
action(user.language_operator_bitwise_exlcusive_or): " ^ "
action(user.language_operator_bitwise_exlcusive_or_assignment): " ^= "
action(user.language_operator_bitwise_left_shift): " << "
action(user.language_operator_bitwise_left_shift_assignment): " <<= "
action(user.language_operator_bitwise_right_shift): " >> "
action(user.language_operator_bitwise_right_shift_assignment): " >>= "
action(user.language_self): "this"
action(user.language_null): "null"
action(user.language_is_null): " == null "
action(user.language_is_not_null): " != null"
action(user.language_state_if): 
	insert("if()")
	key(left)
action(user.language_state_else_if): 
	insert("else if()")
	key(left)
action(user.language_state_else): 
	insert("else\n{{\n}}\n")
	key(up )
action(user.language_state_switch):
	insert("switch()") 
	edit.left()
action(user.language_state_case):
	insert("case \nbreak;") 
	edit.up()
action(user.language_state_for): "for "
action(user.language_state_for_each): 
	insert("foreach() ")
	key(left)
	edit.word_left()
	key(space) 
	edit.left()
action(user.language_state_go_to): "go to "
action(user.language_state_while): 
	insert("while()")
	edit.left()
#action(user.language_type_definition): "typedef "	
#action(user.language_typedef_struct):	
#	insert("typedef struct")
#	insert("{{\n\n}}")
#	edit.up()
#	key(tab)
action(user.language_type_class): "class "
action(user.language_import): "using  "
action(user.language_from_import): "using "
action(user.language_include): insert("using ")
action(user.language_include_system): insert("using ")
action(user.language_include_local): insert('using ')
action(user.language_comment): "//"
action(user.language_private_function): insert("private ")
action(user.language_public_static_function): insert("private static  ")
action(user.language_protected_function): insert("protected  ")
action(user.language_public_function): insert("public  ")


	
