extends Node2D

@onready var FruitScene = preload("res://scenes/fruits/fruit.tscn") # Remplace par le bon chemin !

func _input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		var fruit = FruitScene.instantiate()
		fruit.position = get_global_mouse_position()
		add_child(fruit)
