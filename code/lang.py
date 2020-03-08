from talon import Context, actions, ui, Module

mod = Module()
@mod.action_class
class LangActions:
    def lang_state_if(): 
        """inserts if statement"""

    def lang_state_elif():
        """Inserts else if statement"""

    def lang_state_else():
        """Inserts else statement"""

    def lang_state_switch():
        """Inserts switch statement"""
    
    def lang_state_case():
        """Inserts case statement"""

    def lang_state_for():
        """Inserts for statement"""
    
    def lang_state_go_to():
        """inserts go-to statement"""

    def lang_state_while():
        """Inserts while statement"""
    
    def lang_try_catch():
        """Inserts try/catch. If selection is true, does so around the selecion"""

    def lang_private_function(parsed_words: str):
        """Inserts private function"""

    def lang_protected_function(parsed_words: str):
        """Inserts protected function"""

    def lang_public_function(parsed_words: str):
        """Inserts public function"""

    def lang_comment_here():
        """Inserts comment at current cursor location"""

    def lang_comment_begin_line():
        """Inserts comment at the beginning of the line"""

    def lang_block_comment():
        """Block comments selection"""

        
mod.list('lang_keywords',   desc='List of keywords for the language')

@mod.capture
def lang_keywords(m) -> str:
    "A single keyword"

ctx = Context()
ctx.lists['self.lang_keywords'] = {
    'abstract': 'abstract',
    'as'      : 'as',   
    'base'    : 'base',
    'break'   : 'break',  
    'byte'    : 'byte',
    'case'    : 'case',   
    'catch'   : 'catch',
    'char'    : 'char',
    'checked' : 'checked',
    'class'   : 'class',
    'const'   : 'const',
    'continue': 'continue',
    'decimal' : 'decimal',
    'default' : 'default',
    'delegate': 'delegate',
    'do'      : 'do',
    'double'  : 'double',
    'else'    : 'else',
    'enum'    : 'enum',
    'event'   : 'event',
    'explicit': 'explicit',
    'extern'  : 'extern',
    'false'   : 'false',
    'finally' : 'finally',
    'fixed'   : 'fixed',
    'float'   : 'float',
    'for'     : 'for',
    'for each' : 'foreach',
    'go to'   : 'goto',
    'if'      : 'if',
    'implicit': 'implicit',
    'in'       : 'in',
    'int'      : 'int',
    'interface': 'interface',
    'internal' : 'internal',
    'is'       : 'is',
    'lock'     : 'lock',
    'long'     : 'long',
    'namespace' : 'namespace',
    'new' : 'new',
    'null' : 'null',
    'object' : 'object',
    'operator' : 'operator',
    'out' : 'out',
    'over ride' : 'override',
    'params' : 'params',
    'private' : 'private',
    'protected' : 'protected',
    'public' : 'public',
    'read only' : 'read only',
    'reference' : 'ref',
    'return' : 'return',
    'small byte': 'sbyte',
    'sealed': 'sealed',
    'short': 'short',
    'size of': 'sizeof',
    'stack alloc': 'stackalloc',
    'static': 'static',
    'string': 'string',
    'struct': 'struct',
    'switch': 'switch',
    'this': 'this',
    'throw': 'throw',
    'true': 'true',
    'try': 'try',
    'type of': 'typeof',
    'you int' : 'uint',
    'you long': 'ulong',
    'unchecked': 'unchecked',
    'unsafe': 'unsafe',
    'you short': 'ushort',
    'using': 'using',
    'virtual': 'virtual',
    'void': 'void',
    'volatile': 'volatile',
    'while': 'while',
}

@ctx.capture(rule='{self.lang_keywords}')
def lang_keywords(m):
    return m.lang_keywords[-1]