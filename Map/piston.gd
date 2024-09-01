extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
	
func _physics_process(_delta: float) -> void:
	if Input.is_action_pressed("eject"):
		$AnimationPlayer.play("fire")
	elif Input.is_action_just_released("right_flip"):
		$AnimationPlayer.stop()
