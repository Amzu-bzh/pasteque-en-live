extends RigidBody2D
class_name fruit

var fruit_type: int

func _init(fruit_type: int):
	fruit_type = fruit_type

# Called when the node enters the scene tree for the first time.
func _ready():
	apply_impulse(Vector2(randf_range(-100, 100), -200))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
