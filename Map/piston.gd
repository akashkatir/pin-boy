extends Node3D

	
func _physics_process(_delta: float) -> void:
	if Input.is_action_just_pressed("eject"):
		$AnimationPlayer.play("fire")
	elif Input.is_action_just_released("eject"):
		$AnimationPlayer.play("RESET")
