extends KinematicBody2D

export var move_speed: int

var input_vector
var move_vector


func _physics_process(delta):
	input_vector = Vector2.ZERO
	if Input.is_action_pressed("ui_up"):
		input_vector.y -= 1
	if Input.is_action_pressed("ui_down"):
		input_vector.y += 1
	if Input.is_action_pressed("ui_left"):
		input_vector.x -= 1
	if Input.is_action_pressed("ui_right"):
		input_vector.x += 1
	input_vector = input_vector.normalized()
	move_vector = input_vector * move_speed
	move_vector = move_and_slide(move_vector)
