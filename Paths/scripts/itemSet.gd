extends Node2D

onready var itemScene = preload("res://scenes/items/item.tscn")

onready var SLOT1 = get_node("Slot1")
onready var SLOT2 = get_node("Slot2")
onready var SLOT3 = get_node("Slot3")
onready var SLOT4 = get_node("Slot4")

var selected_item

func ready():
	pass

func _on_AddItem_pressed():
	var slot = chooseSlot()
	
	if (slot):
		var newItem = itemScene.instance()
		newItem.position.x = slot.get_global_position().x
		newItem.position.y = slot.get_global_position().y
		slot.fullSlot()
		add_child(newItem)		

func chooseSlot():
	if (not SLOT1.isFull):
		return SLOT1
	if (not SLOT2.isFull):
		return SLOT2
	if (not SLOT3.isFull):
		return SLOT3
	if (not SLOT4.isFull):
		return SLOT4

func manage_selected_item(item):
	if (selected_item and selected_item != item):
		selected_item.hide_actions()
	item.hide_actions()
	selected_item = item