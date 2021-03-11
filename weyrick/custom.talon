
settings():
    user.mouse_enable_pop_click = 1
    user.mouse_enable_pop_stops_scroll = 1
    user.mouse_wheel_down_amount = 240
#    user.grid_shimmer_effect_enabled = 0

tag(): user.mouse_grid_enabled
#bark: key(enter)
mission control: user.mission()
debug that: user.misc_debug()
sky <user.letters>:
    user.insert_formatted(letters, "ALL_CAPS")
swick: key(cmd-tab)
slapper:
    edit.line_end()
    ";"
    key(enter)
wipe (right | write):
    key(delete)
jump:
    key(ctrl-;)
jump <user.text>:
    key(ctrl-;)
    insert(user.text)
standard: "std::"
swipe: ", "
per: "("
perrin: "("
close perrin: ")"
clothes bracket: "}"
close bracket: "}"
swipe <user.text>:
    ", "
    insert(user.formatted_text(user.text, "ALL_LOWERCASE"))
(datsun | dotson) : ". "
bump minus: " - "
bump: key(space)
bump <user.text>:
    key(space)
    insert(user.formatted_text(user.text, "ALL_LOWERCASE"))
biker: edit.copy()
snatch: edit.cut()
spark: edit.paste()
sparker: key(cmd-shift-v)
back up: edit.undo()
ticker: "`"
doubler: "\""
trough: key(alt-backspace)
grep: "grep "
#nulla: "0"
#bar: "|"
#doula: "0"
tenth: ""
#backer: edit.line_end()
#fronter: edit.line_start()
katter:
   key(cmd-shift-space)
katter <user.text>:
   key(cmd-shift-space)
   insert(user.formatted_text(user.text, "ALL_LOWERCASE"))
#way down: key(cmd-down)
#way up: key(cmd-up)
righty: user.mouse_long_right()
comment: '// '
end bracket:
    edit.line_end()
    ' {'
    key(enter)
