extends CharacterBody3D

# Time before a flip action can be pressed again and have an effect.
var debounce_time = 0.4;

func _physics_process(_delta):
	if Input.is_action_pressed("flip"):
		if ($AnimationPlayer.is_playing() and
			$AnimationPlayer.current_animation_position > debounce_time):
			$AnimationPlayer.stop()
		$AnimationPlayer.play("flip")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
