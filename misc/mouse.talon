control mouse: user.mouse_toggle_control_mouse()
zoom mouse: user.mouse_toggle_zoom_mouse()
camera overlay: eye_mouse.camera_overlay.toggle()
run calibration: user.mouse_calibrate()	
touch: mouse_click(0)
righty: mouse_click(1)
midclick: mouse_click(2)

#see keys.py for modifiers.
#defaults
#command
#control
#option = alt
#shift
#super = windows key
<user.modifiers> touch: 
	key("{modifiers}:down")
	mouse_click(0)
	key("{modifiers}:up")
<user.modifiers> righty: 
	key("{modifiers}:down")
	mouse_click(1)
	key("{modifiers}:up")
(dubclick | duke): 
	mouse_click()
	mouse_click()
(tripclick | triplick): 
	mouse_click()
	mouse_click()
	mouse_click()
wheel down: mouse_scroll(300)
wheel tiny [down]: mouse_scroll(20)
wheel downer: user.mouse_scroll_down_continuous()
wheel up: mouse_scroll(-300)
wheel tiny up: mouse_scroll(-20)
wheel upper: user.mouse_scroll_up_continuous()
wheel gaze: user.mouse_gaze_scroll()
wheel stop: user.mouse_scroll_stop()
wheel left: mouse_scroll(0, -40)
wheel tiny left: mouse_scroll(0, -20)
wheel right: mouse_scroll(0, 40)
wheel tiny right: mouse_scroll(0, 20)
curse yes: user.mouse_show_cursor()
curse no: user.mouse_hide_cursor()
drag: user.mouse_drag()