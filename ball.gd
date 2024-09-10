extends RigidBody3D


func _physics_process(_delta: float) -> void:
	# Set a max velocity.
	linear_velocity.x = clamp(linear_velocity.x, -50, 50)
	linear_velocity.z = clamp(linear_velocity.z, -50, 50)

func _on_body_entered(body: Node) -> void:
	if body.is_in_group("boost"):
		print("Touched boost")
		var velocity_multiplier = Vector3(3,0,0)
		linear_velocity *= velocity_multiplier
