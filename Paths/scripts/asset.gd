extends Node2D

onready var item = $Item
onready var title = $Title

export var AssetTitle = "Asset"

func _ready():
	title.text = AssetTitle
	
