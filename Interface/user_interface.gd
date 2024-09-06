extends Control


var best_height: int = 0;  # Highest point reached in meters.

func show_game() -> void:
	$HUD.show()
	$MainMenu.hide()
	
func show_menu() -> void:
	$HUD.hide()
	$MainMenu.show()

func update_height(height: float):
	height = int(height)  # Truncate from float.
	best_height = max(best_height, height)
	$HUD/CurrentHeightLabel.text = "Current height: %sm" % height
	$HUD/BestHeightLabel.text = "Best height: %sm" % best_height
