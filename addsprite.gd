extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _input(event):
	if event.is_action_pressed("loadTest"):
		var scene = load("res://disk.tscn")
		var instance = scene.instance()
		add_child(instance)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
