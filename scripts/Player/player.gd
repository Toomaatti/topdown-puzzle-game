extends CharacterBody2D
var  move_speed: float = 200 
var direction: Vector2
var object: Node2D


func _physics_process(delta: float) -> void:
	handle_movement()
	interacting()
	move_and_slide()





func handle_movement():
	direction = Input.get_vector("left","right","up","down")
	velocity = direction * move_speed

func interacting():
	if Input.is_action_just_pressed("interact"):
		if is_instance_valid(object):
			object.interact()
			

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("objects"):
		object = body
		


func _on_area_2d_body_exited(body: Node2D) -> void:
	if body == object:
		object = null
