extends Node3D


@export var is_playing = false
@export var coin_sfx: NodePath

func _ready() -> void:
	$Map/Goal.win.connect(_on_win)
	$UserInterface.show_menu()

func _physics_process(_delta: float) -> void:
	handle_menu()

	if out_of_bounds($Ball.position):
		spawn_ball()
	if Input.is_action_just_released("respawn"):
		$UserInterface.reset_timer()
		spawn_ball()
	$UserInterface.update_height(-$Ball.position.z)

func _on_win() -> void:
	print('You win!')

func handle_menu() -> void:
	if is_playing:
		if Input.is_action_just_released("menu"):
			is_playing = false
			$UserInterface.show_menu()
	else:
		if Input.is_anything_pressed():
			spawn_ball()
			$UserInterface.show_game()
			get_node(coin_sfx).play()
			is_playing = true
			
func spawn_ball() -> void:
	$Ball.position = $BallSpawn.position
	$Ball.linear_velocity = Vector3.ZERO

func out_of_bounds(pos: Vector3) -> bool:
	return pos.y < -1 or pos.z > 1
