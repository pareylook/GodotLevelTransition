extends Node2D
# import level manager
onready var lvl_manager : SwitchLVLManager = get_node("/root/SwitchLevelManager")

# define path to next level. exactly path we can get like "next_level.resource_path"
#export (PackedScene) var next_level
export (String, FILE, "*.tscn") var next_level

func _ready() -> void:
	#important option to draw transition above all levels
	self.z_index = 4096
	

func _unhandled_input(event: InputEvent) -> void:
	if (event.is_action_pressed("ui_select")):
		lvl_manager.scene_transition(next_level)
