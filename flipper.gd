extends CharacterBody3D

func _physics_process(_delta):
	if Input.is_action_pressed("right_bumper"):
		$AnimationPlayer.play("flip")
	#else:
		#$AnimationPlayer.play("FlipDown")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
