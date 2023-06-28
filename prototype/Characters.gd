extends MeshInstance3D

var velocity = Vector3(0, 0, 0)
var pos = Vector3(0, 0, 0)
var speed = 4

func _process(delta):
	pos = pos + velocity * delta
	%Characters.translate(velocity * delta)


func _input(event):
	velocity = Vector3(0,0,0)
	
	if event.is_action_pressed("w"):
		velocity.z -= speed

	if event.is_action_pressed("s"):
		velocity.z += speed

	if event.is_action_pressed("a"):
		velocity.x -= speed

	if event.is_action_pressed("d"):
		velocity.x += speed
