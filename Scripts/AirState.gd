extends State

class_name airState

@export var fall_animation : String = "Fall"
@export var ground_state : State



func state_process(delta):
	if(character.is_on_floor()):
		next_state = ground_state
		



func _on_animation_tree_animation_finished(anim_name):
	if(anim_name == fall_animation):
		next_state = ground_state # Replace with function body.
