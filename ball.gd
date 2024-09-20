extends RigidBody3D

@export var bumper_sfx: NodePath

func _physics_process(_delta: float) -> void:
	# Set a max velocity.
	linear_velocity.x = clamp(linear_velocity.x, -50, 50)
	linear_velocity.z = clamp(linear_velocity.z, -50, 50)

func _on_body_entered(body: Node3D) -> void:
	if body.name == "BumperMap":
		get_node(bumper_sfx).play()
