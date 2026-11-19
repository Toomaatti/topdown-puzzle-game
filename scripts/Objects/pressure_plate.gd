extends StaticBody2D
@onready var sprite: Polygon2D = $Polygon2D
var switch_flipped: bool = false
@export var door: StaticBody2D




func _on_area_2d_body_entered(body: Node2D) -> void:
	sprite.color = Color.GREEN
	switch_flipped = true
	door.toggle_door()
	

func _on_area_2d_body_exited(body: Node2D) -> void:
	sprite.color = Color.RED
	switch_flipped = false
	door.toggle_door()
