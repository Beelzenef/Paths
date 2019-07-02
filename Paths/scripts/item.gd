extends Button

onready var content = get_node("Content")
onready var editContent = get_node("Actions/EditContent")
onready var actionsPanel = get_node("Actions")

func _on_Item_pressed():
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