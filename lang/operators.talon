code.language: python
code.language: csharp
code.language: talon
#todo tags
#tag: ???
-
#pointer operators
op deference: user.language_operator_indirection()
op address of: user.language_operator_address_of()
op arrow: user.language_operator_structure_deference()
#lambda 
op lambda: user.language_operator_lambda()
#subscript
op subscript: user.language_operator_subscript()
#assignment
op (equals | assign): user.language_operator_assignment()
#math operators
op (minus | subtract | sub): user.language_operator_subtraction()
[op] (minus | subtract | sub) equals: user.language_operator_subtraction_assignment()
[op] (plus | add): user.language_operator_addition()
[op] (plus | add) equals: user.language_operator_addition()
op (times | multiply): user.language_operator_multiplication()
op (times | multiply) equals: user.language_operator_multiplication_assignment()
op divide: user.language_operator_divide()
op divide equals: user.language_operator_divide_equals()
op mod: user.language_operator_modulo()
op mod equals: user.language_operator_modulo_assignment()
(op (power | exponent) | to the power [of]): user.language_operator_exponent()
#comparison operators
(op | is) equal: user.language_operator_equal()
(op | is) not equal: user.language_operator_not_equal()
(op | is) (greater | more): user.language_operator_greater_than()
(op | is) (less | below) [than]: user.language_operator_greater_than_or_equal_to()
(op | is) greater [than] or equal: user.language_operator_less_than()
(op | is) less [than] or equal: user.language_operator_less_than_or_equal_to()
#logical operators
(op | logical) and: user.language_operator_and()
(op | logical) or: user.language_operator_or()
#bitwise operators
[op] bitwise and: user.language_bitwise_operator_and()
(op | logical | bitwise) and equals: user.language_bitwise_operator_and_equals()
[op] bitwise or: user.language_bitwise_operator_or()
(op | logical | bitwise) or equals: user.language_bitwise_operator_or_equals()
(op | logical | bitwise) (ex | exclusive) or: user.language_bitwise_operator_exlcusive_or()
[(op | logical | bitwise)] (left shift | shift left): user.language_bitwise_operator_left_shift()
[(op | logical | bitwise)] (right shift | shift right): user.language_bitwise_operator_right_shift()
(op | logical | bitwise) (ex | exclusive) or equals: user.language_bitwise_operator_exlcusive_or_equals()
[(op | logical | bitwise)] (left shift | shift left) equals: user.language_bitwise_operator_left_shift_equals()
[(op | logical | bitwise)] (left right | shift right) equals: user.language_bitwise_operator_right_shift_equals()
#tbd
(op | pad) colon: " : "
