
settings():
    user.mouse_enable_pop_click = 1
    user.mouse_enable_pop_stops_scroll = 1
    user.mouse_wheel_down_amount = 240

mission control: user.mission()
debug that: user.misc_debug()
sky <user.letters>:
    user.insert_formatted(letters, "ALL_CAPS")
swick: key(cmd-tab)

swipe: ", "
close perrin: ")"
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
trough: key(alt-backspace)
