extends Node
class_name DialogueWindow

@export var displayed_post: Post


func _ready():
	setup_variables()

func setup_variables():
	pass

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
