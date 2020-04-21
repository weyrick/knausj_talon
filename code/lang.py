from talon import Context, actions, ui, Module, registry
from typing import List, Union, Set

mod = Module()
mod.setting('language_private_function_formatter', str)
mod.setting('language_protected_function_formatter', str)
mod.setting('language_public_function_formatter', str)
mod.setting('language_private_variable_formatter', str)
mod.setting('language_protected_variable_formatter', str)
mod.setting('language_public_variable_formatter', str)

ctx = Context()
ctx.settings["user.language_private_function_formatter"] = "SNAKE_CASE"
ctx.settings["user.language_protected_function_formatter"] = "SNAKE_CASE"
ctx.settings["user.language_public_function_formatter"] = "SNAKE_CASE"
ctx.settings["user.language_private_variable_formatter"] = "SNAKE_CASE"
ctx.settings["user.language_protected_variable_formatter"] = "SNAKE_CASE"
ctx.settings["user.language_public_variable_formatter"] = "SNAKE_CASE"

@mod.action_class
class LanguageActions:
    def language_operator_indirection():
        """language_operator_indirection"""

    def language_operator_address_of():
        """language_operator_address_of (e.g., C++ & op)"""

    def language_operator_structure_deference():
        """language_operator_structure_deference (e.g., C++ -> op)"""

    def language_operator_lambda():
        """language_operator_lambda"""

    def language_operator_subscript():
        """language_operator_subscript (e.g., C++ [])"""

    def language_operator_assignment():
        """language_operator_assignment"""

    def language_operator_subtraction():
        """language_operator_subtraction"""

    def language_operator_subtraction_assignment():
        """language_operator_subtraction_equals"""
    
    def language_operator_addition():
        """language_operator_addition"""

    def language_operator_addition_assignment():
        """language_operator_addition_assignment"""

    def language_operator_multiplication():
        """language_operator_multiplication"""

    def language_operator_multiplication_assignment():
        """language_operator_multiplication_assignment"""

    def language_operator_exponent():
        """language_operator_exponent"""

    def language_operator_division():
        """language_operator_division"""

    def language_operator_division_assignment():
        """language_operator_division_assignment"""

    def language_operator_modulo():
        """language_operator_modulo"""

    def language_operator_modulo_assignment():
        """language_operator_modulo_assignment"""

    def language_operator_equal():
        """language_operator_equal"""
    
    def language_operator_not_equal():
        """language_operator_not_equal"""

    def language_operator_greater_than():
        """language_operator_greater_than"""

    def language_operator_greater_than_or_equal_to(): 
        """language_operator_greater_than_or_equal_to"""

    def language_operator_less_than():
        """language_operator_less_than"""

    def language_operator_less_than_or_equal_to(): 
        """language_operator_less_than_or_equal_to"""

    def language_operator_and():
        """languagee_operator_and"""

    def language_operator_or():
        """language_operator_or"""

    def language_operator_bitwise_and():
        """language_operator_bitwise_and"""

    def language_operator_bitwise_and_assignment():
        """language_operator_and"""

    def language_operator_bitwise_or(): 
        """language_operator_bitwise_or"""

    def language_operator_bitwise_or_assignment(): 
        """language_operator_or_assignment"""
    
    def language_operator_bitwise_exlcusive_or(): 
        """language_operator_bitwise_exlcusive_or"""

    def language_operator_bitwise_exlcusive_or_assignment(): 
        """language_operator_bitwise_exlcusive_or_assignment"""

    def language_operator_bitwise_left_shift(): 
        """language_operator_bitwise_left_shift"""

    def language_operator_bitwise_left_shift_assignment(): 
        """language_operator_bitwise_left_shift_assigment"""

    def language_operator_bitwise_right_shift(): 
        """language_operator_bitwise_right_shift"""

    def language_operator_bitwise_right_shift_assignment(): 
        """language_operator_bitwise_right_shift_assignment"""

    def language_self():
        """Inserts the equivalent of "this" in C++ or self in python"""
        
    def language_null():
        """inserts null equivalent"""
        
    def language_is_null():
        """inserts check for == null"""

    def language_is_not_null():
        """inserts check for == null"""

    def language_state_in():
        """Inserts python "in" equivalent"""

    def language_state_if():
        """Inserts if statement"""

    def language_state_else_if():
        """Inserts else if statement"""

    def language_state_else():
        """Inserts else statement"""

    def language_state_switch():
        """Inserts switch statement"""

    def language_state_case():
        """Inserts case statement"""

    def language_state_for():
        """Inserts for statement"""

    def language_state_for_each():
        """Inserts for each equivalent statement"""
    
    def language_state_go_to():
        """inserts go-to statement"""

    def language_state_while():
        """Inserts while statement"""
    
    def language_try_catch():
        """Inserts try/catch. If selection is true, does so around the selecion"""

    def language_private_function():
        """Inserts private function declaration w/o name"""
         #todo: once .talon action definitiones can take parameters, combine with language_private_function_formatter
         #same for all the rest

    def language_private_function_formatter(phrase):
        """Inserts private function name with formatter"""
        actions.user.formatters_format_text(actions.dictate.parse_words(phrase), registry.settings["user.language_private_function_formatter"][1].split(" "))

    def language_private_static_function():
        """Inserts private static function"""
        
    def language_protected_function():
        """Inserts protected function declaration w/o name"""

    def language_protected_static_function():
        """Inserts public function"""

    def language_protected_function_formatter(phrase: str):
        """inserts properly formatted private function name"""
        actions.insert(actions.user.formatters_format_text(actions.dictate.parse_words(phrase), registry.settings["user.language_protected_function_formatter"][1].split(" ")))
    
    def language_public_function():
        """Inserts public function"""

    def language_public_static_function():
        """Inserts public function"""

    def language_public_function_formatter(phrase: str):
        """inserts properly formatted private function name"""
        actions.insert(actions.user.formatters_format_text(actions.dictate.parse_words(phrase), registry.settings["user.language_public_function_formatter"][1].split(" ")))

    def language_private_function_formatter(phrase: str):
        """Inserts private function name with formatter"""
        actions.insert(actions.user.formatters_format_text(actions.dictate.parse_words(phrase), registry.settings["user.language_private_function_formatter"][1].split(" ")))

    def language_protected_variable_formatter(phrase: str):
        """inserts properly formatted private function name"""
        actions.insert(actions.user.formatters_format_text(actions.dictate.parse_words(phrase), registry.settings["user.language_protected_variable_formatter"][1].split(" ")))

    def language_public_variable_formatter():
        """inserts properly formatted private function name"""
        actions.insert(actions.user.formatters_format_text(actions.dictate.parse_words(phrase), registry.settings["user.language_public_variable_formatter"][1].split(" ")))

    def language_comment():
        """Inserts comment at current cursor location"""

    def language_block_comment():
        """Block comment"""

    def language_type_definition():
        """language_type_definition (typedef)"""

    def language_typedef_struct():
        """language_typedef_struct (typedef)"""

    def language_type_class():
        """language_type_class"""

    def language_type_struct():
        """language_type_struct"""

    def language_include():
        """language_include"""

    def language_include_system():
        """language_include_system"""

    def language_include_local():
        """language_include_local"""
    
    def language_import():
        """import/using equivalent"""

    def language_from_import():
        """from import python equivalent"""


    