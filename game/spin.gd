extends MeshInstance

var rotating = false
var speed = 1

var prev_mouse_position
var next_mouse_position

func _process(delta):
	if (Input.is_action_just_pressed("rotate")):
		rotating = true
		prev_mouse_position = get_viewport().get_mouse_position()
	if (Input.is_action_just_released("rotate")):
		rotating = false
		
	if (rotating):
		next_mouse_position = get_viewport().get_mouse_position()
		var deltaX = (next_mouse_position.x - prev_mouse_position.x) * speed * delta
		var deltaY = (next_mouse_position.y - prev_mouse_position.y) * speed * delta
		rotate_y(deltaX)
		rotate_z(deltaY)
		prev_mouse_position = next_mouse_position
