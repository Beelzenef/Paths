extends Node2D

onready var content = get_node("Content")
onready var editContent = get_node("Actions/EditContent")

# actions

func _on_EditButton_pressed():
	if (editContent.visible):
		content.text = editContent.text
	editContent.visible = not editContent.visible

func _on_ClearButton_pressed():
	content.text = ""
