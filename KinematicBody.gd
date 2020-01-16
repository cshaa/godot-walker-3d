extends KinematicBody

# https://docs.godotengine.org/en/3.1/classes/class_kinematicbody.html

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
# func _process(delta):
#	self.move_and_collide( Vector3(0,0,-0.1) )

func _input(event):
	if event is InputEventKey:
		
		if event.scancode == KEY_UP:
			self.move_and_collide( Vector3(0,0,-0.1) )
		
		if event.scancode == KEY_DOWN:
			self.move_and_collide( Vector3(0,0,+0.1) )
		
		if event.scancode == KEY_LEFT:
			self.move_and_collide( Vector3(-0.1,0,0) )
		
		if event.scancode == KEY_RIGHT:
			self.move_and_collide( Vector3(+0.1,0,0) )
