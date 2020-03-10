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
@ctx.capture(rule='{self.lang_keywords}')
def lang_keywords(m):
    return m.lang_keywords[-1]