extends CharacterBody2D
@export var player: CharacterBody2D
var push_duration: float
var push_velocity: float = 200
var direction: Vector2
func _physics_process(delta: float) -> void:
	push_duration = max(push_duration - delta, 0)
	if push_duration > 0:
		velocity = push_velocity * direction
	if push_duration == 0:
		velocity.x = 0
		velocity.y = 0
	move_and_slide()
func interact():
	direction = player.global_position - global_position
	direction = direction.normalized()
	direction = direction*-1
	if direction.abs().x > direction.abs().y:
		direction.y = 0
	else:
		direction.x = 0
	push_duration = 0.15
	

	
