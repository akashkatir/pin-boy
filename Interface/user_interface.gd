extends Control


var best_height: int = 0  # Highest point reached in meters.
var time: float = 0.0

func show_game() -> void:
	$HUD.show()
	$MainMenu.hide()

func show_menu() -> void:
	$HUD.hide()
	$MainMenu.show()

func update_height(height: float):
	height = int(height)  # Truncate from float.
	best_height = max(best_height, height)
	$HUD/MarginContainer/VBoxContainer/HeightLabel.text = "Current height: %sm" % height
	$HUD/MarginContainer/VBoxContainer/BestHeightLabel.text = "Best height: %sm" % best_height
	
func _process(delta: float) -> void:
	time += delta
	var millis = int(fmod(time, 1) * 100)
	var seconds = int(fmod(time, 60))
	var minutes = int(fmod(time, 3600) / 60)
	$HUD/MarginContainer/VBoxContainer/TimeLabel.text = "Time: %02d:%02d.%03d" % [minutes, seconds, millis]
