extends RigidBody3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _physics_process(_delta: float) -> void:
	# Set a max velocity.
	linear_velocity.x = clamp(linear_velocity.x, -30, 30)
	linear_velocity.z = clamp(linear_velocity.z, -30, 30)


func _on_body_entered(body: Node) -> void:
	if body.is_in_group("bumper"):
		print(body)
		var impulse = linear_velocity * 1.5
		impulse.y = 0

		apply_central_impulse(impulse)
