# scene with this script should to be autoloaded Project Setting -> AutoLoad
extends Node
class_name SwitchLVLManager

# path to scene with transition animation
var screen_transition_scene = preload("res://scenes/Transition.tscn") 

# this function we can call from each level. "scenePath" is a path to next level
func scene_transition(scenePath) -> void:
	var transition_instance = screen_transition_scene.instance()
	get_parent().add_child(transition_instance)
	yield (transition_instance, "screen_covered")
	get_tree().change_scene(scenePath)
