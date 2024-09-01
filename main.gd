extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass  # Replace with function body.

func _physics_process(_delta: float) -> void:
	if out_of_bounds($Ball.position):
		$Ball.position = $BallSpawn.position
		$Ball.linear_velocity = Vector3.ZERO
	$UserInterface.update_height(-$Ball.position.z)
	
func out_of_bounds(position: Vector3) -> bool:
	return position.y < -1 or position.z > 1
