extends KinematicBody2D

var input_vector
var move_speed = 400


func _physics_process(delta):
	input_vector = Vector2.ZERO
	if Input.is_key_pressed(KEY_UP):
		input_vector.y -= 1
	if Input.is_key_pressed(KEY_DOWN):
		input_vector.y += 1
	if Input.is_key_pressed(KEY_LEFT):
		input_vector.x -= 1
	if Input.is_key_pressed(KEY_RIGHT):
		input_vector.x += 1
	move_and_slide(input_vector * move_speed)
