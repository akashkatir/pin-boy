extends RigidBody3D


func _physics_process(_delta: float) -> void:
	# Set a max velocity.
	linear_velocity.x = clamp(linear_velocity.x, -50, 50)
	linear_velocity.z = clamp(linear_velocity.z, -50, 50)
