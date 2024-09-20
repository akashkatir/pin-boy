extends Node3D

signal win()

@export var win_countdown_seconds: float = 2.0

var countdown: float = win_countdown_seconds
var is_in_goal: bool = false

func _physics_process(delta: float) -> void:
	if is_in_goal:
		countdown -= delta
		if countdown < 0:
			emit_win()

func emit_win() -> void:
	win.emit()
	reset_timer()
	
func start_timer() -> void:
	countdown = win_countdown_seconds
	is_in_goal = true

func reset_timer() -> void:
	is_in_goal = false
	countdown = win_countdown_seconds

func _on_area_3d_body_entered(body: Node3D) -> void:
	if body.is_in_group("ball"):
		start_timer()

func _on_area_3d_body_exited(body: Node3D) -> void:
	if body.is_in_group("ball"):
		reset_timer()
