extends State

class_name groundState


@export var air_state : State
@export var jump_animation : String = "jump"
@export var fall_animation : String = "Fall"

func state_process(delta):
	if(!character.is_on_floor()):
		next_state = air_state
		playback.travel(fall_animation)
		

func state_input(event : InputEvent):
	if(event.is_action_pressed("jump")):
		jump()
		
func jump():
	character.velocity.y = character.jump_velocity
	next_state = air_state
	playback.travel(jump_animation)
