extends CharacterBody2D


var SPEED = 100
# called when the node enters the scene tree for first time.
func _ready():
	pass

#Clled every frame. 'delta' is the elapsed time since previous frame
func _process(_delta):
	#movement()
	movement_diag()
	move_and_slide()  

 
func  movement_diag():
	var x_move = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	var y_move = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	velocity = Vector2(x_move, y_move) * SPEED
	return velocity
