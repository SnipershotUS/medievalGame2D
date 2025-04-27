class_name Human
extends Race

func _init():
	stats = {
		#Survival Stats
		'max_health' = 100.0,
		'max_stamina' = 100.0,
		'max_water' = 100.0,
		'max_food' = 100.0,
		
		#Weight - will affect speed
		'avg_weight' = 150.0,
		'weight' = 150.0 + randf_range(-20, 20),
		
		#Character Stats
		'intellect' = 10,
		'strength' = 10,
		'charisma' = 10,
		'speed' = 1.0
	}
