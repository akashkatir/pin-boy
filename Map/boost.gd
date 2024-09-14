extends Node3D


@export var velocity_multiplier = 3


func _on_area_3d_body_entered(body: Node3D) -> void:
	if body.is_in_group("ball"):
		print("Boost!")
		body.linear_velocity *= velocity_multiplier
