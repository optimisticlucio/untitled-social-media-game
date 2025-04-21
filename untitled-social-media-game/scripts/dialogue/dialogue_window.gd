extends Node
class_name DialogueWindow

@export var paths: Array[DialoguePath]


func _ready():
	setup_variables()
	
	if Engine.is_editor_hint():
		show_in_editor()

func setup_variables():
	pass

func show_in_editor():
	show_post_with_comments();

func show_dialogue_paths():
	# TODO: WRITE!
	push_error("RAN INCOMPLETE FUNCTION")

func show_post_no_comments():
	# TODO: WRITE!
	pass

func show_comments():
	# TODO: WRITE!
	pass

func show_post_with_comments():
	show_post_no_comments()
	show_comments()
