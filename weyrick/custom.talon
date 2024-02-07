
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
end two: key(enter)
wipe (right | write):
    key(delete)
jump:
    key(ctrl-;)
jump <user.text>:
    key(ctrl-;)
    insert(user.text)
standard: "std::"
(close square | clothes square | car square | air square): "]"
talon week: speech.enable()
(per | perrin): "("
close perrin: ")"
clothes bracket: "}"
close bracket: "}"
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
burn: key(alt-backspace)
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
sleeper: speech.disable()
gazer: user.mouse_gaze_scroll()
app one: key(cmd-alt-1)
app two: key(cmd-alt-2)
app three: key(cmd-alt-3)
app four: key(cmd-alt-4)
app five: key(cmd-alt-5)
app six: key(cmd-alt-6)
app seven: key(cmd-alt-7)
app eight: key(cmd-alt-b)
app nine: key(cmd-alt-9)
app zero: key(cmd-alt-0)
