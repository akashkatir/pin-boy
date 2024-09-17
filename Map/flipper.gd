extends Node3D


@export var right_flipper = false;
# Time before a flip action can be pressed again and have an effect.
@export var debounce_time = 0.4;
@export var flipper_sfx: NodePath

var action_name: String = "left_flip"
var animation_name: String = "left_flip";

func _physics_process(_delta):
	if Input.is_action_just_pressed(action_name):
		play_animation()
		get_node(flipper_sfx).play()
	if Input.is_action_just_released(action_name):
		reset_animation()
		
func play_animation() -> void:
	$AnimationPlayer.play(animation_name)
	
func reset_animation() -> void:
	$AnimationPlayer.play("RESET")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if right_flipper:
		action_name = "right_flip"
		animation_name = "right_flip"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
