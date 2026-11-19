extends StaticBody2D
@onready var sprite: Polygon2D = $Polygon2D
var switch_flipped: bool = false
@export var door: StaticBody2D
var body_count: int = 0



func _on_area_2d_body_entered(body: Node2D) -> void:
	sprite.color = Color.GREEN
	switch_flipped = true
	if body_count == 0:
		door.toggle_door()
	body_count = body_count + 1
	

func _on_area_2d_body_exited(body: Node2D) -> void:
	body_count = body_count -1
	if body_count == 0:
		sprite.color = Color.RED
		switch_flipped = false
		door.toggle_door()
