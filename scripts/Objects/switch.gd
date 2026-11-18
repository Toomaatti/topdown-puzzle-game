extends StaticBody2D
@onready var switch:Polygon2D = $Polygon2D
var switch_flipped: bool = false
@export var door: StaticBody2D

func interact():
	if switch_flipped == false:
		switch_flipped = true
		switch.color = Color.GREEN
		door.toggle_door()
	elif switch_flipped == true:
		switch_flipped = false
		switch.color = Color.RED
		door.toggle_door()
