extends RigidBody3D


func _physics_process(_delta: float) -> void:
	# Set a max velocity.
	linear_velocity.x = clamp(linear_velocity.x, -30, 30)
	linear_velocity.z = clamp(linear_velocity.z, -30, 30)

func _on_body_entered(body: Node) -> void:
	if body.is_in_group("bumper"):
		apply_central_impulse(linear_velocity * 1.5)
