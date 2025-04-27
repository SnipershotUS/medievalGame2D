extends MainMenuRoot

@export var chooseWorld: PackedScene
@export var settings: PackedScene

func _ready() -> void:
	menu_stack.append(self)

func _on_play_button_pressed() -> void:
	#Need to update to new instance, as the other one gets freed on going back to the previous menu
	var next_menu = chooseWorld.instantiate()
	next_menu.menu_stack = menu_stack
	
	##TODO Check if wanting to do multiplayer, either here or ingame
	get_tree().current_scene.add_child(chooseWorld.instantiate())

func _on_join_button_pressed() -> void:
	##TODO Figure out how to join another player
	print("Join Button Pressed")

func _on_settings_button_pressed() -> void:
	#Need to update to new instance, as the other one gets freed on going back to the previous menu
	var next_menu = settings.instantiate()
	next_menu.menu_stack = menu_stack
	
	#Go to Settings menu scene
	get_tree().current_scene.add_child(settings.instantiate())

func _on_quit_button_pressed() -> void:
	get_tree().quit()
