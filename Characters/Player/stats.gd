class_name Stats
extends Node

@export var stats = {
	#Survival Stats
	'max_health'= 100.0,
	'max_stamina' = 100.0,
	'max_water' = 100.0,
	'max_food' = 100.0,
	
	#Weight - will affect speed
	'avg_weight' = 150.0,
	'weight' = 150.0,
	
	#Character Stats
	'intellect' = 10,
	'strength' = 10,
	'charisma' = 10,
	'speed' = 1.0
}

func _init_race_stats(race: Race) -> void:
	for stat in stats:
		##SHOULD print each stat name and the starting stat value
		print("Old ", stat, ": ", stats[stat])
		
		stats[stat] = race.stats[stat]
		
		##SHOULD print each stat name and the new stat value
		print("New ", stat, ": ", stats[stat])
