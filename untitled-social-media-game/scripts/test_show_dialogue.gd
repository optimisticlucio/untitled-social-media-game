extends Node2D

@export var initialPost: Post = null;
var currentPost: Post = null;
var user_username: Label;
var user_profilepic: Sprite2D;
var post_text: RichTextLabel;
var comments: Array[RichTextLabel];
var post_image: TextureRect;
var options: Array[Button];

func _ready():
	if (initialPost == null):
		push_error("INITIAL POST NOT SET") 
	
	get_nodes();
	
	change_active_post(initialPost);

func get_nodes() -> void:
	user_username = get_node("UserUsername")
	user_profilepic = get_node("CircleMask/UserProfilePic")
	post_text = get_node("PostText")
	post_image = get_node("TextureRect")
	comments.append(get_node("Comment/Text"))
	comments.append(get_node("Comment2/Text"))
	comments.append(get_node("Comment3/Text"))
	options.append(get_node("Option1"))
	options.append(get_node("Option2"))
	options.append(get_node("Option3"))

func set_post_data() -> void:
	post_text.text = currentPost.text;
	post_image.texture = currentPost.img;
	
	if currentPost.posting_user:
		user_username.text = currentPost.posting_user.username;
		user_profilepic.texture = currentPost.posting_user.profile_picture;
	else:
		user_username.text = "";
		user_profilepic.texture = null;
	
	for comment_index in range(comments.size()):
		if (currentPost.comments.size() > comment_index):
			comments[comment_index].text = currentPost.comments[comment_index].text
		else:
			comments[comment_index].text = "COMMENT DOES NOT EXIST"
	
	for option_index in range(options.size()):
		for connection in options[option_index].pressed.get_connections():
			options[option_index].pressed.disconnect(connection.callable)
		
		if (currentPost.dialogue_options.size() > option_index):
			options[option_index].text = currentPost.dialogue_options[option_index].text
			options[option_index].pressed.connect(change_active_post.bind(currentPost.dialogue_options[option_index].leads_to))
		else:
			options[option_index].text = "MISSING OPTION, DO NOT CLICK IT WON'T WORK"

func change_active_post(next_post: Post):
	currentPost = next_post;
	set_post_data();
