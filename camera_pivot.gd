extends Marker3D

#@onready var ball = get_node("/root/Ball");
@export var ball: Node3D;
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


var base_speed = 5.0  # Base speed when close to the ball
var max_speed = 20.0 # Maximum speed limit
var distance_factor = 2.0 # How much distance affects speed

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var ball_position = ball.global_transform.origin
	
	var distance = global_transform.origin.distance_to(ball_position) 

	# Calculate speed based on distance
	var speed = base_speed + (distance * distance_factor)
	speed = clamp(speed, base_speed, max_speed) # Limit speed

	global_transform.origin.z = lerp(
		global_transform.origin.z, ball_position.z + 5, speed * delta)
	
