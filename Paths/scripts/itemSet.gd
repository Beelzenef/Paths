extends Node2D

onready var itemScene = preload("res://scenes/items/item.tscn")

onready var SLOT1 = get_node("Slots/Slot1")
onready var SLOT2 = get_node("Slots/Slot2")
onready var SLOT3 = get_node("Slots/Slot3")
onready var SLOT4 = get_node("Slots/Slot4")

func ready():
	pass

func _on_AddItem_pressed():
	var slot = chooseSlot()
	
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
