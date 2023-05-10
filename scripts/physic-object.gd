extends Node2D

var isClicked : bool
@export
var clickShape : CollisionShape2D
@onready
var nextStep = rotation_degrees

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if Input.is_action_just_pressed("back"):
		rotation_degrees= 90
		nextStep = 90
	if isClicked:
		#print(str(get_global_mouse_position()) +" | "+ str(global_position))
		global_position = lerp(global_position, get_global_mouse_position(), 25*delta)
#		if (nextStep-1 < round(rotation_degrees) and round(rotation_degrees)<nextStep+1):
#			nextStep = -round(rotation_degrees)/2;
#			if nextStep > -2 and 2 > nextStep:
#				nextStep = 0;
		rotation = lerp_angle(rotation, deg_to_rad(0), 14*delta)

func _on_clickdetect_input_event(_viewport, event, _shape_idx):
	if(event is InputEventMouseButton):
		if(event.is_pressed() && isClicked != true):#click down [=
			isClicked = true
			clickShape.disabled = false
		elif(isClicked != false):#click up
			isClicked = false
			clickShape.disabled = true


func _on_clickdetect_mouse_exited():
	if(isClicked != false):
		clickShape.disabled = true
		isClicked = false
