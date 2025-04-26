
extends Resource
class_name Post

@export_multiline var text: String
@export var posting_user: User
@export var img: Texture2D
@export var amount_of_likes: int
@export var comments: Array[Comment]
@export var dialogue_options: Array[DialoguePath]
