extends KinematicBody2D

export (int) var speed = 200

var target = Vector2(185,500)
var velocity = Vector2()

func _input(event):
	if event.is_action_pressed("tower left"):
		target.x += 285
		target.y += 0
	if event.is_action_pressed("tower right"):
		target.x += -285
		target.y += 0
	if event.is_action_pressed("tower leftup"):
		target.x += 285
		target.y += 22.5
	if event.is_action_pressed("tower rightup"):
		target.x += -285
		target.y += 22.5
	if event.is_action_pressed("tower leftdown"):
		target.x += 285
		target.y += -22.5
	if event.is_action_pressed("tower rightdown"):
		target.x += -285
		target.y += -22.5
	
func _physics_process(delta):
	velocity = position.direction_to(target) * speed
	# look_at(target)
	if position.distance_to(target) > 5:
		velocity = move_and_slide(velocity)
		velocity = move_and_slide(velocity)
