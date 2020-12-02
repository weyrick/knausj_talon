from talon import Module, Context, actions, settings
from talon.mac import dock
from talon import ctrl, noise
from user.knausj_talon.mouse_grid.mouse_grid import mg, ctx as mg_ctx

mod = Module()

@mod.action_class
class Actions:

    def mission():
        """mission control"""
        dock.dock_notify('com.apple.expose.awake')

# def on_pop(active):
#     print('pop click grid')
#     mg_ctx.tags = []
#     mg.reset()(None)
#     mg.stop()
#
#
# noise.register('pop', on_pop)