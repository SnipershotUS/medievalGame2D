class_name MenuBG
extends ColorRect

@export var new_color: Color = Color(0.25,0.25,0.25,1)
@export var offset: Vector2 = Vector2.ZERO

func _init() -> void:
	#Not sure why but if I don't do this it just resets in the scenes but not in gameplay; it is the other way around without the _ready() call
	position = -(size/2) + offset

func _ready() -> void:
	color = new_color
	size = Vector2(1152, 648)
	position = -(size/2) + offset
