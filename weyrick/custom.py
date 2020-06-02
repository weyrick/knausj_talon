from talon import Module, Context, actions, settings
from talon.mac import dock

mod = Module()

@mod.action_class
class Actions:

    def mission():
        """mission control"""
        dock.dock_notify('com.apple.expose.awake')
