extends Node3D

@export var velocity_multiplier = 5


func _on_area_3d_body_entered(body: Node3D) -> void:
	if body.is_in_group("ball"):
		print("Boost!")
		var direction = -global_basis.z
		body.linear_velocity += direction * velocity_multiplier
