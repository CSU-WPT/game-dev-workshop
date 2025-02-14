extends Area3D

@export var next_level: PackedScene

const SPIN_SPEED = 2

var time = 0
@onready var start_y = position.y
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	rotate_y(SPIN_SPEED * delta)
	time += wrapf(delta, 0, 2*PI)
	position.y = start_y + sin(2 * time) * 0.125

func collision(body: Node3D):
	if body.name == "Player":
		get_tree().call_deferred("change_scene_to_packed", next_level)
