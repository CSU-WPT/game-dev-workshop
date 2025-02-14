extends SpringArm3D

const MOUSE_SENSITIVITY = 0.5
const ZOOM_SPEED = 0.25

const ZOOM_MAX = 5
const ZOOM_MIN = 2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		rotation.y -= (deg_to_rad(event.relative.x) * MOUSE_SENSITIVITY)
		rotation.y = wrapf(rotation.y, 0, TAU)
		rotation.x -= (deg_to_rad(event.relative.y) * MOUSE_SENSITIVITY)
		rotation.x = clamp(rotation.x, -PI/2, PI/20)
	if event.is_action("zoom_in"):
		spring_length -= ZOOM_SPEED
	if event.is_action("zoom_out"):
		spring_length += ZOOM_SPEED
	spring_length = clamp(spring_length, ZOOM_MIN, ZOOM_MAX)
