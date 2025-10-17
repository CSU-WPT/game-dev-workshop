extends CharacterBody3D

enum PlayerState {
	IDLE,
	RUNNING,
	JUMPING,
	FALLING
}

const SPEED = 5.0
const JUMP_VELOCITY = 4.5
const JUMP_BOOST_VELOCITY = 1.5
const ANGULAR_VELOCITY = 5.0

var did_jump_anim = false
var did_fall_anim = true
var current_state = PlayerState.IDLE
var direction = Vector3.ZERO
var gravity = 5
@onready var camera = $"Camera Arm/Camera3D"
@onready var model = $Jearl
@onready var animations = $Jearl/AnimationPlayer

func _process(delta: float) -> void:
	var input_dir = Input.get_vector("walk_left", "walk_right", "walk_forward", "walk_backward")
	direction = (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	direction = direction.rotated(Vector3.UP, camera.global_rotation.y) # Remove me and see what happens!

	if input_dir:
		model.rotation.y = lerp_angle(model.rotation.y, atan2(-direction.x, -direction.z), ANGULAR_VELOCITY * delta) # Change me to `model.rotation.y = atan2(-direction.x, -direction.z)` and see what happens!
	
	if not direction and is_on_floor():
		current_state = PlayerState.IDLE
	elif direction and is_on_floor():
		current_state = PlayerState.RUNNING
	else:
		if velocity.y > 0:
			current_state = PlayerState.JUMPING
		else:
			current_state = PlayerState.FALLING
	update_animation()

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity.y -= gravity * delta

	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	
	if Input.is_action_just_released("jump") and velocity.y > 0:
		velocity.y *= 0.25
	
	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED

	else:
		velocity.x = 0
		velocity.z = 0
	move_and_slide()

func update_animation() -> void:
	if is_on_floor():
		did_jump_anim = false
		did_fall_anim = false
	if current_state == PlayerState.RUNNING:
		animations.play("walk")
	if current_state == PlayerState.IDLE:
		animations.play("idle")
	if current_state == PlayerState.JUMPING and not did_jump_anim:
		animations.play("jumping")
		did_jump_anim = true
	if current_state == PlayerState.FALLING and not did_fall_anim:
		animations.play("falling")
		did_fall_anim = true
