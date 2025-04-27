class_name ResButton
extends Button

@export var new_theme: Theme = preload("res://UI/Resources/Themes/menu_theme.tres")

func _ready():
	#Only update if necessary
	if theme != new_theme:
		print("New Theme")
		theme = new_theme
