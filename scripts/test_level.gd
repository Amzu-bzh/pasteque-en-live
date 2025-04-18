extends Node2D

@onready var CherryScene = preload("res://scenes/fruits/cherry.tscn") # Remplace par le bon chemin !
@onready var StrawberryScene = preload("res://scenes/fruits/strawberry.tscn") # Remplace par le bon chemin !

func _input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		var fruit_type = randi() % 3
		
		var fruit = CherryScene.instantiate()
		if fruit_type == 2:
			fruit = StrawberryScene.instantiate()
		
		fruit.position = get_global_mouse_position()
		add_child(fruit)
