extends StaticBody2D
@onready var door_sprite: Polygon2D = $Polygon2D
@onready var door_collision: CollisionShape2D = $CollisionShape2D
@export var switch: StaticBody2D
func toggle_door():
	if switch.switch_flipped == false :
		door_sprite.visible = true
		door_collision.set_deferred("disabled", false)
	elif switch.switch_flipped == true:
		door_sprite.visible = false
		door_collision.set_deferred("disabled", true)
	
