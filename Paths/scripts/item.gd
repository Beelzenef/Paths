extends Node2D

onready var content = get_node("Content")
onready var editContent = get_node("Actions/EditContent")
onready var actionsPanel = get_node("Actions")

signal selected_item

func _ready():
	connect("selected_item", get_parent(), "manage_selected_item", [self])

func _on_HideActions_Button_pressed():
	emit_signal("selected_item")

func hide_actions():
	actionsPanel.visible = not actionsPanel.visible

# actions

func _on_EditButton_pressed():
	if (editContent.visible):
		content.text = editContent.text
	else:
		editContent.text = content.text
	editContent.visible = not editContent.visible

func _on_ClearButton_pressed():
	content.text = ""

