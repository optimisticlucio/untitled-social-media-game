extends Node
class_name DialogueWindow

@export var post: Post
@export var paths: Array[DialoguePath]

func show_dialogue_paths():
	# TODO: WRITE!
	push_error("RAN INCOMPLETE FUNCTION")

func show_post_no_comments():
	# TODO: WRITE!
	push_error("RAN INCOMPLETE FUNCTION")

func show_comments():
	# TODO: WRITE!
	push_error("RAN INCOMPLETE FUNCTION")

func show_post_with_comments():
	show_post_no_comments()
	show_comments()
