class_name MainMenuRoot
extends Control

@export var is_main_menu: bool = false
var is_in_focus: bool = true

##TODO Figure out how to choose whether to do multiplayer or not, could be done here but might be nice if you can just open it in game
#var is_multiplayer: bool = false

var menu_stack: Array[MainMenuRoot]

func _ready() -> void:
	menu_stack.append(self)

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.is_pressed() and event.button_index == MOUSE_BUTTON_LEFT:
		#Maybe do something when left button pressed? Idk
		pass
	
	if event is InputEventKey and event.is_pressed() and event.keycode == KEY_ESCAPE:
		if is_in_focus and !is_main_menu:
			menu_stack.remove_at(-1)
			menu_stack[-1].is_in_focus = true
			queue_free()
