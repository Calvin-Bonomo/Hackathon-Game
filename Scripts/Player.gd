extends Node2D

export var speed = 200
var move_dir = Vector2(0.0, 0.0)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	position += move_dir * speed * delta

func _input(event):
	if event.is_action("interact"):
		emit_signal("interact_with_npc", position)
	
	if event.is_action_released("move_up"):
		move_dir.y = 0
	if event.is_action_released("move_down"):
		move_dir.y = 0
	if event.is_action_released("move_right"):
		move_dir.x = 0
	if event.is_action_released("move_left"):
		move_dir.x = 0
	
	if event.is_action_pressed("move_up") and move_dir.y != -1:
		move_dir.y = -1
	if event.is_action_pressed("move_down") and move_dir.y != -1:
		move_dir.y = 1
	if event.is_action_pressed("move_right") and move_dir.x != -1:
		move_dir.x = 1
	if event.is_action_pressed("move_left") and move_dir.x != -1:
		move_dir.x = -1
