from talon import Module, Context, actions, settings
from talon.mac import dock
from talon import ctrl, noise

mod = Module()

@mod.action_class
class Actions:

    def mission():
        """mission control"""
        dock.dock_notify('com.apple.expose.awake')

def on_pop(_):
    print('pop click')
    ctrl.mouse_click()
noise.register("pop", on_pop)