extends RigidBody2D

@onready var OrangeScene = preload("res://scenes/fruits/orange.tscn") # Remplace par le bon chemin !

# Called when the node enters the scene tree for the first time.
func _ready():
	apply_impulse(Vector2(randf_range(-100, 100), -200))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_body_entered(body: Node):
	if body.name == "Apple":
		body.queue_free()
		var fruit = OrangeScene.instantiate()
		fruit.position = self.position
		get_parent().add_child(fruit)
		self.queue_free()
