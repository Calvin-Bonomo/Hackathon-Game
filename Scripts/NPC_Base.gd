extends Node2D

export var dialog_path = ""
export var min_dist_to_talk = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_Player_interact_with_npc(position):
	if self.position.distance_to(position) <= min_dist_to_talk:
		start_dialog()

func start_dialog():
	load("res://Scenes/Dialog.tscn")
