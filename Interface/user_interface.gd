extends Control

var best_height: int = 0;  # Highest point reached in meters.

func update_height(height: float):
	height = int(height)  # Truncate from float.
	best_height = max(best_height, height)
	$CurrentHeightLabel.text = "Current height: %sm" % height
	$BestHeightLabel.text = "Best height: %sm" % best_height
