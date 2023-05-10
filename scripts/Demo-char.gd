extends Sprite2D

var shader:ShaderMaterial;

func _ready():
	shader = get_material();

func _on_hoverdetector_mouse_entered():
	shader.set_shader_parameter("width", 2.0)


func _on_hoverdetector_mouse_exited():
	shader.set_shader_parameter("width", 0.0)
