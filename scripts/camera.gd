extends Camera2D

@export
var pos1 : Vector2
@export
var pos2 : Vector2

func _process(delta):
	pass
	if Input.is_action_just_pressed("front"):
		position = pos1;
	if Input.is_action_just_pressed("back"):
		position = pos2;
