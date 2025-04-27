class_name RaceSelector
extends Node

#
static func get_race(race: String) -> Race:
	print("Race Selected", race)
	match race:
		"Human":
			return preload("res://Race/human.gd").new()
		
		_:
			print("No Race Found!")
			return null
