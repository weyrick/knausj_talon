from talon import Module, Context, actions, settings
from talon.mac import dock
from talon import ctrl, noise

mod = Module()

@mod.action_class
class Actions:

    def mission():
        """mission control"""
        dock.dock_notify('com.apple.expose.awake')

# XXX this duplicates what is in mouse.py, so registers 2 pops
# when mouse control is. only one can be active.
def on_pop(_):
    print('pop click')
    ctrl.mouse_click(button=0, hold=16000)
noise.register("pop", on_pop)