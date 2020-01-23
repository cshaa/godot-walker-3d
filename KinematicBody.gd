extends KinematicBody

# Najdi uzel CameraRoot
onready var camera = get_node("CameraRoot")


# Schovej kurzor a zachytávej myš
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)


# Pohyb hlavní postavy
func _process(delta):
	
	var forward = self.transform.basis.xform(Vector3(0,0,-0.1))
	var right = self.transform.basis.xform(Vector3(+0.1,0,0))
	
	if Input.is_action_pressed("walk_forward"):
		self.move_and_collide( forward )
	
	if Input.is_action_pressed("walk_back"):
		self.move_and_collide( -forward )
	
	if Input.is_action_pressed("strafe_right"):
		self.move_and_collide( right )
	
	if Input.is_action_pressed("strafe_left"):
		self.move_and_collide( -right )




# Otáčení kamery
func _input(event):
	if event is InputEventMouseMotion:
		var delta = event.relative
		camera.rotation_degrees[0] -= delta[1] * 0.1
		self.rotation_degrees[1] -= delta[0] * 0.1

