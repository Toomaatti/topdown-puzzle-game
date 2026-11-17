extends CharacterBody2D
var  move_speed: float = 200 
var direction: Vector2
func _physics_process(delta: float) -> void:
	handle_movement()
	move_and_slide()





func handle_movement():
	direction = Input.get_vector("left","right","up","down")
	velocity = direction * move_speed
	
