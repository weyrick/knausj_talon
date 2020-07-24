from talon import Module, speech_system, registry
mod = Module()
@mod.action
def misc_debug():
    "debug prints"
    print('debug stuff')
    print([(k, len(v)) for k, v in registry.lists.items()])
    print(speech_system.grammar.lists.keys())
    print(speech_system.grammar.list_nfas.keys())
    print(speech_system.grammar.list_nfas['user.letter'][1].match('sit '))
    print(speech_system.grammar.list_nfas['user.special'][1].match('enter '))