extends Marker3D

#@onready var ball = get_node("/root/Ball");
@export var ball: Node3D;
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var ball_position = ball.global_transform.origin
	
	global_transform.origin.z = lerp(
		global_transform.origin.z, ball_position.z + 5, delta)
