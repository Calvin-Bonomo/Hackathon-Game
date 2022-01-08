extends Area2D


var time = 0

var clicks = 0

var isAlive = true

var start = false

onready var sprite : Sprite = get_node("Area2D/Rock")
func _process(delta):
	
	while start == true:
		time += 1
		
	if time == 360:
		isAlive = false
		print("minigame done. Score: ", clicks)


func _on_Area2D_input_event(viewport, event, shape_idx):
	
	if event is InputEventMouseButton && isAlive == true:
		if event.is_pressed():
			if start != true:
				start = true
			clicks += 1
			
			print(clicks);
	pass # Replace with function body.


