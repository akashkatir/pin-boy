extends Node3D

@export var piston_sfx: NodePath

func _physics_process(_delta: float) -> void:
	if Input.is_action_just_pressed("eject"):
		$AnimationPlayer.play("fire")
		get_node(piston_sfx).play()
	elif Input.is_action_just_released("eject"):
		$AnimationPlayer.play("RESET")
