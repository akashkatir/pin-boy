extends Label

var max_height = 0;  # Highest point reached in meters.

func update_max_height(height):
	max_height = max(max_height, int(height))
	text = "Best height: %sm" % max_height
