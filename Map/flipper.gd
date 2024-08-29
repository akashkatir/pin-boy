extends Node3D

@export var invert = false;
# Time before a flip action can be pressed again and have an effect.
@export var debounce_time = 0.4;

var animation_name: String = "flip";

func _physics_process(_delta):
	if Input.is_action_pressed("flip"):
		if ($AnimationPlayer.is_playing() and
			$AnimationPlayer.current_animation_position > debounce_time):
			$AnimationPlayer.stop()
		
		$AnimationPlayer.play(animation_name)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if invert:
		animation_name = "flip_inverted"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
