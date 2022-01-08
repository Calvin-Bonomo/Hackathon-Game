extends Node2D

var speed = 1000
var moveDir = Vector2(0.0, 0.0)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	position += moveDir * speed * delta

func _input(event):
	if event.is_action_released("move_up"):
		moveDir.y = 0
	if event.is_action_released("move_down"):
		moveDir.y = 0
	if event.is_action_released("move_right"):
		moveDir.x = 0
	if event.is_action_released("move_left"):
		moveDir.x = 0
	
	if event.is_action_pressed("move_up"):
		moveDir.y = -1
	if event.is_action_pressed("move_down"):
		moveDir.y = 1
	if event.is_action_pressed("move_right"):
		moveDir.x = 1
	if event.is_action_pressed("move_left"):
		moveDir.x = -1
